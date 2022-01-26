package io.github.mosser.arduinoml.kernel.behavioral;

import io.github.mosser.arduinoml.kernel.generator.Visitor;
import io.github.mosser.arduinoml.kernel.structural.Lcd;
import io.github.mosser.arduinoml.kernel.structural.SensorDigital;

public abstract class ActionLcdSensor extends Action {

    private Lcd lcd;

    public Lcd getLcd() {
        return lcd;
    }

    public void setLcd(Lcd lcd) {
        this.lcd = lcd;
    }

    @Override
    public void accept(Visitor visitor) {
        visitor.visit(this);
    }
}
