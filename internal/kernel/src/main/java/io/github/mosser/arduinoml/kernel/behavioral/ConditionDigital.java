package io.github.mosser.arduinoml.kernel.behavioral;

import io.github.mosser.arduinoml.kernel.generator.Visitor;
import io.github.mosser.arduinoml.kernel.structural.SensorDigital;
import io.github.mosser.arduinoml.kernel.structural.Signal;

public class ConditionDigital implements ICondition {

    private Signal signal;
    private SensorDigital sensor;

    public Signal getSignal() {
        return signal;
    }

    public void setSignal(Signal signal) {
        this.signal = signal;
    }

    @Override
    public SensorDigital getSensor() {
        return sensor;
    }

    public void setSensor(SensorDigital sensor) {
        this.sensor = sensor;
    }

    @Override
    public void accept(Visitor visitor) {
        visitor.visit(this);
    }
}
