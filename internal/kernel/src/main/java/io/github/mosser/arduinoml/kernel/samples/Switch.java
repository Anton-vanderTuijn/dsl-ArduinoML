package io.github.mosser.arduinoml.kernel.samples;

import io.github.mosser.arduinoml.kernel.App;
import io.github.mosser.arduinoml.kernel.behavioral.ActionDigital;
import io.github.mosser.arduinoml.kernel.behavioral.ConditionDigital;
import io.github.mosser.arduinoml.kernel.behavioral.State;
import io.github.mosser.arduinoml.kernel.behavioral.Transition;
import io.github.mosser.arduinoml.kernel.generator.ToWiring;
import io.github.mosser.arduinoml.kernel.generator.Visitor;
import io.github.mosser.arduinoml.kernel.structural.ActuatorDigital;
import io.github.mosser.arduinoml.kernel.structural.SensorDigital;
import io.github.mosser.arduinoml.kernel.structural.Signal;
import io.github.mosser.arduinoml.kernel.structural.Task;

import java.util.Arrays;
import java.util.Collections;

public class Switch {

    public static void main(String[] args) {

        // Declaring elementary bricks
        SensorDigital button = new SensorDigital();
        button.setName("button");
        button.setPin(9);

        ActuatorDigital led = new ActuatorDigital();
        led.setName("LED");
        led.setPin(12);

        // Declaring states
        State on = new State();
        on.setName("on");

        State off = new State();
        off.setName("off");
        off.setInitial(true);

        // Creating actions
        ActionDigital switchTheLightOn = new ActionDigital();
        switchTheLightOn.setActuator(led);
        switchTheLightOn.setSignal(Signal.HIGH);

        ActionDigital switchTheLightOff = new ActionDigital();
        switchTheLightOff.setActuator(led);
        switchTheLightOff.setSignal(Signal.LOW);

        // Binding actions to states
        on.setActions(Arrays.asList(switchTheLightOn));
        off.setActions(Arrays.asList(switchTheLightOff));

        // Creating transitions
        Transition on2off = new Transition();
        on2off.setTarget(off);
        ConditionDigital conditionDigital = new ConditionDigital();
        conditionDigital.setSignal(Signal.HIGH);
        conditionDigital.setSensor(button);
        on2off.setConditions(Collections.singletonList(conditionDigital));

        Transition off2on = new Transition();
        off2on.setTarget(on);
        ConditionDigital conditionDigital2 = new ConditionDigital();
        conditionDigital2.setSignal(Signal.LOW);
        conditionDigital2.setSensor(button);
        off2on.setConditions(Collections.singletonList(conditionDigital2));

        // Binding transitions to states
        on.setTransitions(Collections.singletonList(on2off));
        off.setTransitions(Collections.singletonList(off2on));

        // Building the App
        App theSwitch = new App();
        theSwitch.setName("Switch!");
        Task task = new Task();
        task.setStates(Arrays.asList(on, off));

        theSwitch.setTasks(Collections.singletonList(task));
        theSwitch.setBricks(Arrays.asList(button, led));


        // Generating Code
        Visitor codeGenerator = new ToWiring();
        theSwitch.accept(codeGenerator);

        // Printing the generated code on the console
        System.out.println(codeGenerator.getResult());
    }

}
