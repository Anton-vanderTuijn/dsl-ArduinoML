package io.github.mosser.arduinoml.kernel.generator;

import io.github.mosser.arduinoml.kernel.App;
import io.github.mosser.arduinoml.kernel.behavioral.Action;
import io.github.mosser.arduinoml.kernel.behavioral.ExitError;
import io.github.mosser.arduinoml.kernel.behavioral.State;
import io.github.mosser.arduinoml.kernel.behavioral.Transition;
import io.github.mosser.arduinoml.kernel.structural.Actuator;
import io.github.mosser.arduinoml.kernel.structural.Brick;
import io.github.mosser.arduinoml.kernel.structural.SIGNAL;
import io.github.mosser.arduinoml.kernel.structural.Sensor;

/**
 * Quick and dirty visitor to support the generation of Wiring code
 */
public class ToWiring extends Visitor<StringBuffer> {
    enum PASS {ONE, TWO}


    public ToWiring() {
        this.result = new StringBuffer();
    }

    private void w(String s) {
        result.append(String.format("%s", s));
    }

    @Override
    public void visit(App app) {
        //first pass, create global vars
        context.put("pass", PASS.ONE);
        w("// Wiring code generated from an ArduinoML model\n");
        w(String.format("// Application name: %s\n", app.getName()) + "\n");

        w("long debounce = 200;\n");
        w("\nenum STATE {");
        String sep = "";
        for (State state : app.getStates()) {
            w(sep);
            state.accept(this);
            sep = ", ";
        }
        w("};\n");
        if (app.getInitial() != null) {
            w("STATE currentState = " + app.getInitial().getName() + ";\n");
        }

        for (Brick brick : app.getBricks()) {
            brick.accept(this);
        }

        //second pass, setup and loop
        context.put("pass", PASS.TWO);
        w("\nvoid setup(){\n");
        for (Brick brick : app.getBricks()) {
            brick.accept(this);
        }
        w("}\n");

        w("\nvoid loop() {\n" +
                "\tswitch(currentState){\n");
        for (State state : app.getStates()) {
            state.accept(this);
        }
        w("\t}\n" +
                "}");
    }

    @Override
    public void visit(Actuator actuator) {
        if (context.get("pass") == PASS.ONE) {
            return;
        }
        if (context.get("pass") == PASS.TWO) {
            w(String.format("  pinMode(%d, OUTPUT); // %s [Actuator]\n", actuator.getPin(), actuator.getName()));
            return;
        }
    }


    @Override
    public void visit(Sensor sensor) {
        if (context.get("pass") == PASS.ONE) {
            w(String.format("\nboolean %sBounceGuard = false;\n", sensor.getName()));
            w(String.format("long %sLastDebounceTime = 0;\n", sensor.getName()));
            return;
        }
        if (context.get("pass") == PASS.TWO) {
            w(String.format("  pinMode(%d, INPUT);  // %s [Sensor]\n", sensor.getPin(), sensor.getName()));
            return;
        }
    }

    @Override
    public void visit(State state) {
        if (context.get("pass") == PASS.ONE) {
            w(state.getName());
            return;
        }
        if (context.get("pass") == PASS.TWO) {
            w("\t\tcase " + state.getName() + ":\n");
            for (Action action : state.getActions()) {
                action.accept(this);
            }

            if (state instanceof ExitError) {
                throwException(((ExitError) state).getCode());
            }

            if (state.getTransition() != null) {
                for (Transition transition : state.getTransition()) {
                    transition.accept(this);
                }
                w("\t\tbreak;\n");
            }
            return;
        }

    }

    private void throwException(int code) {
        w("\t\t\twhile(true){\n");

        w("\t\t\t\tfor(int i = 0; i < " + code + "; i++){\n");
        w(String.format("\t\t\t\t\tdigitalWrite(%d, %s);\n", ExitError.LED_ERROR_PIN, SIGNAL.HIGH));
        w("\t\t\t\t\tdelay(500);\n");
        w(String.format("\t\t\t\t\tdigitalWrite(%d, %s);\n", ExitError.LED_ERROR_PIN, SIGNAL.LOW));
        w("\t\t\t\t\tdelay(500);\n");
        w("\t\t\t\t}\n");

        w("\t\t\tdelay(2500);\n");
        w("\t\t\t}\n");
    }

    @Override
    public void visit(Transition transition) {
        if (context.get("pass") == PASS.ONE) {
            return;
        }
        if (context.get("pass") == PASS.TWO) {

            for (int i = 0; i < transition.getSensor().size(); i++) {
                String sensorName = transition.getSensor().get(i).getName();
                w(String.format("\t\t\t%sBounceGuard = millis() - %sLastDebounceTime > debounce;\n",
                        sensorName, sensorName));
            }

            w("\t\t\tif( ");

            for (int i = 0; i < transition.getSensor().size(); i++) {
                String sensorName = transition.getSensor().get(i).getName();
                w(String.format("(digitalRead(%d) == %s && %sBounceGuard)",
                        transition.getSensor().get(i).getPin(), transition.getValue().get(i), sensorName));
                if (i + 1 < transition.getSensor().size()) {
                    w(" && ");
                }
            }
            w(" ) {\n");

            for (int i = 0; i < transition.getSensor().size(); i++) {
                String sensorName = transition.getSensor().get(i).getName();
                w(String.format("\t\t\t\t%sLastDebounceTime = millis();\n", sensorName));
            }
            w("\t\t\t\tcurrentState = " + transition.getNext().getName() + ";\n");
            w("\t\t\t}\n");

            return;
        }
    }

    @Override
    public void visit(Action action) {
        if (context.get("pass") == PASS.ONE) {
            return;
        }
        if (context.get("pass") == PASS.TWO) {
            w(String.format("\t\t\tdigitalWrite(%d, %s);\n", action.getActuator().getPin(), action.getValue()));
            return;
        }
    }

}
