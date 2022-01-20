package io.github.mosser.arduinoml.kernel.behavioral;

import io.github.mosser.arduinoml.kernel.generator.Visitor;
import io.github.mosser.arduinoml.kernel.structural.Actuator;
import io.github.mosser.arduinoml.kernel.structural.Lcd;

public class ActionLcdActuator extends Action {

    private Actuator actuator;
    private Lcd lcd;

    public Lcd getLcd() {
        return lcd;
    }

    public void setLcd(Lcd lcd) {
        this.lcd = lcd;
    }

    @Override
    public Actuator getActuator() {
        return actuator;
    }

    @Override
    public void setActuator(Actuator actuator) {
        this.actuator = actuator;
    }

    @Override
    public void accept(Visitor visitor) {
        visitor.visit(this);
    }
}
