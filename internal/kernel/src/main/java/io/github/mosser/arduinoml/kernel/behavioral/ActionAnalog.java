package io.github.mosser.arduinoml.kernel.behavioral;

import io.github.mosser.arduinoml.kernel.generator.Visitor;
import io.github.mosser.arduinoml.kernel.structural.ActuatorAnalog;

public class ActionAnalog implements IAction {

    private int signal;
    private ActuatorAnalog actuator;

    public int getSignal() {
        return signal;
    }

    public void setSignal(int signal) {
        this.signal = signal;
    }

    public ActuatorAnalog getActuator() {
        return actuator;
    }

    public void setActuator(ActuatorAnalog actuator) {
        this.actuator = actuator;
    }

    @Override
    public void accept(Visitor visitor) {
        visitor.visit(this);
    }
}
