package io.github.mosser.arduinoml.kernel.behavioral;

import io.github.mosser.arduinoml.kernel.generator.Visitor;
import io.github.mosser.arduinoml.kernel.structural.ActuatorDigital;
import io.github.mosser.arduinoml.kernel.structural.Signal;

public class ActionDigital implements IAction {

    private Signal signal;
    private ActuatorDigital actuator;

    public Signal getSignal() {
        return signal;
    }

    public void setSignal(Signal signal) {
        this.signal = signal;
    }

    public ActuatorDigital getActuator() {
        return actuator;
    }

    public void setActuator(ActuatorDigital actuator) {
        this.actuator = actuator;
    }

    @Override
    public void accept(Visitor visitor) {
        visitor.visit(this);
    }
}
