package io.github.mosser.arduinoml.kernel.behavioral;

import io.github.mosser.arduinoml.kernel.generator.Visitor;
import io.github.mosser.arduinoml.kernel.structural.Lcd;
import io.github.mosser.arduinoml.kernel.structural.Sensor;

public class ActionLcdSensor extends Action {

    private Sensor sensor;
    private Lcd lcd;

    public Lcd getLcd() {
        return lcd;
    }

    public void setLcd(Lcd lcd) {
        this.lcd = lcd;
    }

    public Sensor getSensor() {
        return sensor;
    }

    public void setSensor(Sensor sensor) {
        this.sensor = sensor;
    }

    @Override
    public void accept(Visitor visitor) {
        visitor.visit(this);
    }
}
