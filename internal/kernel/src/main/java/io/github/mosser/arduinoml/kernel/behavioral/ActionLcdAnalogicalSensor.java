package io.github.mosser.arduinoml.kernel.behavioral;

import io.github.mosser.arduinoml.kernel.generator.Visitor;
import io.github.mosser.arduinoml.kernel.structural.Lcd;
import io.github.mosser.arduinoml.kernel.structural.SensorAnalogical;
import io.github.mosser.arduinoml.kernel.structural.SensorDigital;

public class ActionLcdAnalogicalSensor extends ActionLcdSensor {

    private SensorAnalogical sensor;
    private Lcd lcd;

    public Lcd getLcd() {
        return lcd;
    }

    public void setLcd(Lcd lcd) {
        this.lcd = lcd;
    }

    public SensorAnalogical getSensor() {
        return sensor;
    }

    public void setSensor(SensorAnalogical sensor) {
        this.sensor = sensor;
    }

    @Override
    public void accept(Visitor visitor) {
        visitor.visit(this);
    }
}
