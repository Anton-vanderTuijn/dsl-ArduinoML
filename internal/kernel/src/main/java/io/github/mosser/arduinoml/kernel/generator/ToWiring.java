package io.github.mosser.arduinoml.kernel.generator;

import io.github.mosser.arduinoml.kernel.App;
import io.github.mosser.arduinoml.kernel.behavioral.*;
import io.github.mosser.arduinoml.kernel.structural.*;

/**
 * Quick and dirty visitor to support the generation of Wiring code
 */
public class ToWiring extends Visitor<StringBuffer> {
    enum PASS {ONE, TWO, DECLARATION, SETUP, PROGRAM, RUNNER}

    public ToWiring() {
        this.result = new StringBuffer();
    }

    private void w(String s) {
        result.append(String.format("%s", s));
    }

    @Override
    public void visit(App app) {
        //first pass, create global vars
        w("#include <avr/io.h>\n" +
                "#include <util/delay.h>\n" +
                "#include <Arduino.h>\n" +
                "#include <LiquidCrystal.h>\n" +
                "#include <TaskScheduler.h>\n\n");

        w("// Wiring code generated from an ArduinoML model\n");
        w(String.format("// Application name: %s\n", app.getName()) + "\n");

        context.put("pass", PASS.DECLARATION);
        for (Task task : app.getTasks()) {
            task.accept(this);
        }
        context.put("pass", PASS.ONE);
        w("long debounce = 200;\n");
        w("\nenum STATE {");
        String sep = "";
        for (Task task : app.getTasks()) {
            for (IState state : task.getStates()) {
                w(sep);
                state.accept(this);
                sep = ", ";
            }
        }
        w("};\n\n");

        for (Task task : app.getTasks()) {
            task.accept(this);
        }
        w("\n");
        for (IBrick brick : app.getBricks()) {
            brick.accept(this);
        }
        w("\n");

        //second pass, setup and loop
        context.put("pass", PASS.RUNNER);
        w("Scheduler runner;\n");
        for (Task task : app.getTasks()) {
            task.accept(this);
        }

        w("\n");
        context.put("pass", PASS.TWO);
        for (Task task : app.getTasks()) {
            task.accept(this);
        }

        w("void setup(){\n");
        for (IBrick brick : app.getBricks()) {
            brick.accept(this);
        }
        w("\n");
        context.put("pass", PASS.SETUP);
        for (Task task : app.getTasks()) {
            task.accept(this);
        }
        context.put("pass", PASS.TWO);
        w("}\n");

//        w("\nvoid loop() {\n" +
//                "\tswitch(currentState){\n");
//        for (Task task : app.getTasks()) {
//            for (IState state : task.getStates()) {
//                state.accept(this);
//            }
//        }
//        w("\t}\n" +
//                "}");

        w("\nvoid loop() {\n\trunner.execute();\n}\n");
        context.put("pass", PASS.PROGRAM);
        for (Task task : app.getTasks()) {
            task.accept(this);
        }
    }

    @Override
    public void visit(LCD lcd) {
        if (context.get("pass") == PASS.ONE) {
            w("\n#include <LiquidCrystal.h>\n");
            switch (lcd.getBus()) {
                case 1:
                    break;
                case 2:
                    w(String.format("LiquidCrystal lcd(%d, %d, %d, %d, %d, %d, %d);\n", 10, 11, 12, 13, 14, 15, 16));
                    break;
                case 3:
                    break;
            }
            return;
        }
        if (context.get("pass") == PASS.TWO) {
            w(String.format("\tlcd.begin(%d, %d);\n", lcd.getColumns(), lcd.getRow()));
            return;
        }
    }

    @Override
    public void visit(Task task) {
        if (context.get("pass") == PASS.DECLARATION) {
            w("void "+task.getName()+"_FSM();\n\n");
        }else if (context.get("pass") == PASS.ONE){
            w("STATE currentState_"+task.getName()+" = "+ getInitial(task).getName() +";\n");
        }else if (context.get("pass") == PASS.RUNNER) {
            w("Task task_"+task.getName()+"("+task.getPeriod()+", TASK_FOREVER, &"+task.getName()+"_FSM);\n");
        }else if (context.get("pass") == PASS.TWO) {
            w("long timeStartState_" + task.getName() + " = 0;\n");
            w("boolean hasStateChanged_" + task.getName() + " = true;\n\n");
        }else if(context.get("pass") == PASS.SETUP) {
            w("\trunner.addTask(task_"+task.getName()+");\n");
            w("\ttask_"+task.getName()+".enable();\n\n");
        }else if(context.get("pass") == PASS.PROGRAM) {
            w("\nvoid "+task.getName()+"_FSM(){\n");
            context.put("task", task.getName());
            w("\tswitch(currentState_"+task.getName()+"){\n");
            context.put("pass", PASS.TWO);
            for (IState state : task.getStates()) {
                state.accept(this);
            }
            w("\t}\n");
            context.put("pass", PASS.PROGRAM);
            w("}\n");
        }

    }

    private IState getInitial(Task task){
        for (IState state : task.getStates()) {
            if (state.isInitial()) {
                return state;
            }
        }
        return null;
    }


    @Override
    public void visit(ActuatorDigital actuatorDigital) {
        if (context.get("pass") == PASS.ONE) {
            w(String.format("int %s = %d; // [ActuatorDigital]\n", actuatorDigital.getName(), actuatorDigital.getPin()));
            return;
        }
        if (context.get("pass") == PASS.TWO) {
            w(String.format("\tpinMode(%d, OUTPUT); // %s [Actuator]\n", actuatorDigital.getPin(), actuatorDigital.getName()));
            return;
        }
    }

    @Override
    public void visit(ActuatorAnalog actuatorAnalog) {
        if (context.get("pass") == PASS.ONE) {
            w(String.format("int %s = %d; // [ActuatorAnalog]\n", actuatorAnalog.getName(), actuatorAnalog.getPin()));
            return;
        }
        if (context.get("pass") == PASS.TWO) {
            w(String.format("\tpinMode(%d, OUTPUT); // %s [Actuator]\n", actuatorAnalog.getPin(), actuatorAnalog.getName()));
            return;
        }
    }

    @Override
    public void visit(TransitionTime condition) {
        w("TIME TIME" + condition.getTimeBeforeTransition());
    }

    @Override
    public void visit(SensorAnalog sensorAnalog) {
        if (context.get("pass") == PASS.ONE) {
            w(String.format("int %s = %d; // [SensorAnalog]\n", sensorAnalog.getName(), sensorAnalog.getPin()));
            w(String.format("boolean %sBounceGuard = false;\n", sensorAnalog.getName()));
            w(String.format("long %sLastDebounceTime = 0;\n", sensorAnalog.getName()));
            return;
        }
        if (context.get("pass") == PASS.TWO) {
            return;
        }
    }

    @Override
    public void visit(SensorDigital sensorDigital) {
        if (context.get("pass") == PASS.ONE) {
            w(String.format("int %s = %d; // [SensorDigital]\n", sensorDigital.getName(), sensorDigital.getPin()));
            w(String.format("boolean %sBounceGuard = false;\n", sensorDigital.getName()));
            w(String.format("long %sLastDebounceTime = 0;\n", sensorDigital.getName()));
            return;
        }
        if (context.get("pass") == PASS.TWO) {
            w(String.format("\tpinMode(%d, INPUT);  // %s [Sensor]\n", sensorDigital.getPin(), sensorDigital.getName()));
            return;
        }
    }

    @Override
    public void visit(ConditionDigital condition) {
        if (context.get("pass") == PASS.ONE) {
            return;
        }
        if (context.get("pass") == PASS.TWO) {

            String sensorName = condition.getSensor().getName();

            w(String.format("(digitalRead(%s) == %s && %sBounceGuard)", sensorName, condition.getSignal(), sensorName));
            return;
        }
    }

    @Override
    public void visit(ConditionAnalog condition) {
        if (context.get("pass") == PASS.ONE) {
            return;
        }
        if (context.get("pass") == PASS.TWO) {

            String sensorName = condition.getSensor().getName();

            w(String.format("(analogRead(A + %s) %s %s && %sBounceGuard)", sensorName, condition.getComparator().getValue(), condition.getValue(), sensorName));
            return;
        }
    }

    @Override
    public void visit(ActionLCDSimpleText action) {
        if (context.get("pass") == PASS.ONE) {
            return;
        }
        if (context.get("pass") == PASS.TWO) {
            w("\t\t\tlcd.setCursor(0, " + action.getRowToDisplay() + ");\n");
            w(String.format("\t\t\tlcd.print(\"%s\");\n", action.getText()));
            return;
        }
    }

    @Override
    public void visit(ActionLCDAnalogReader action) {
        if (context.get("pass") == PASS.ONE) {
            return;
        }
        if (context.get("pass") == PASS.TWO) {
            w("\t\t\tlcd.setCursor(0, " + action.getRowToDisplay() + ");\n");
            w(String.format("\t\t\tlcd.print(%s);\n", "\"" + action.getBrick().getName() + ":= \" + String(analogRead(" + action.getBrick().getName() + "))"));
            return;
        }
    }

    @Override
    public void visit(ActionLCDDigitalReader action) {
        if (context.get("pass") == PASS.ONE) {
            return;
        }
        if (context.get("pass") == PASS.TWO) {
            w("\t\t\tlcd.setCursor(0, " + action.getRowToDisplay() + ");\n");
            w(String.format("\t\t\tlcd.print(%s);\n", "\"" + action.getBrick().getName() + ":= \" + digitalRead(" + action.getBrick().getName() + ")"));
            return;
        }
    }

    @Override
    public void visit(ActionDigital action) {
        if (context.get("pass") == PASS.ONE) {
            return;
        }
        if (context.get("pass") == PASS.TWO) {

            w(String.format("\t\t\tdigitalWrite(%s, %s);\n", action.getActuator().getName(), action.getSignal()));
            return;
        }
    }

    @Override
    public void visit(ActionAnalog action) {
        if (context.get("pass") == PASS.ONE) {
            return;
        }
        if (context.get("pass") == PASS.TWO) {

            w(String.format("\t\t\tanalogWrite(%s, %s);\n", action.getActuator().getName(), action.getSignal()));
            return;
        }
    }

    @Override
    public void visit(ActionSleep action) {
        // TODO
    }

    @Override
    public void visit(State state) {
        if (context.get("pass") == PASS.ONE) {
            w(state.getName());
            return;
        }
        if (context.get("pass") == PASS.TWO) {
            w("\t\tcase " + state.getName() + ":\n");

            boolean clearLCD = false;

            for (IAction action : state.getActions()) {
                if ((action instanceof ActionLCDAnalogReader || action instanceof ActionLCDSimpleText || action instanceof ActionLCDDigitalReader) && !clearLCD) {
                    w("\t\t\tlcd.setCursor(0, 0);\n");
                    w(String.format("\t\t\tlcd.print(\"                                  \");\n", ""));
                    w("\t\t\tlcd.setCursor(0, 0);\n");
                    clearLCD = true;
                }
                action.accept(this);
            }

            if (state.getTransitions() != null) {
                for (ITransition transition : state.getTransitions()) {
                    transition.accept(this);
                }
                w("\t\tbreak;\n");
            }
            return;
        }

    }

    @Override
    public void visit(StateError error) {
        if (context.get("pass") == PASS.ONE) {
            w(error.getName());
            return;
        }
        if (context.get("pass") == PASS.TWO) {
            w("\t\tcase " + error.getName() + ":\n");

            w("\t\t\twhile(true){\n");

            w("\t\t\t\tfor(int i = 0; i < " + error.getCode() + "; i++){\n");
            w(String.format("\t\t\t\t\tdigitalWrite(%d, %s);\n", StateError.LED_ERROR_PIN, Signal.HIGH));
            w("\t\t\t\t\tdelay(500);\n");
            w(String.format("\t\t\t\t\tdigitalWrite(%d, %s);\n", StateError.LED_ERROR_PIN, Signal.LOW));
            w("\t\t\t\t\tdelay(500);\n");
            w("\t\t\t\t}\n");

            w("\t\t\tdelay(2500);\n");
            w("\t\t\t}\n");
            return;
        }
    }


    @Override
    public void visit(Transition transition) {
        if (context.get("pass") == PASS.ONE) {
            return;
        }
        if (context.get("pass") == PASS.TWO) {

            for (ICondition condition : transition.getConditions()) {
                String sensorName = condition.getSensor().getName();
                w(String.format("\t\t\t%sBounceGuard = millis() - %sLastDebounceTime > debounce;\n",
                        sensorName, sensorName));
            }

            w("\t\t\tif( ");


            for (int i = 0; i < transition.getConditions().size(); i++) {

                transition.getConditions().get(i).accept(this);

                if (i + 1 < transition.getConditions().size()) {
                    w(" && ");
                }
            }
            w(" ) {\n");

            for (ICondition condition : transition.getConditions()) {
                String sensorName = condition.getSensor().getName();
                w(String.format("\t\t\t\t%sLastDebounceTime = millis();\n", sensorName));
            }
            w("\t\t\t\tcurrentState_"+context.get("task")+" = " + transition.getTarget().getName() + ";\n");
            w("\t\t\t}\n");

            return;
        }
    }

}
