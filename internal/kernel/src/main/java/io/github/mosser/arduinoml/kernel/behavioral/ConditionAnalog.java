package io.github.mosser.arduinoml.kernel.behavioral;

import io.github.mosser.arduinoml.kernel.generator.Visitor;
import io.github.mosser.arduinoml.kernel.structural.Comparator;
import io.github.mosser.arduinoml.kernel.structural.SensorAnalog;

public class ConditionAnalog implements ICondition {

    private Comparator comparator;
    private int value;
    private SensorAnalog sensor;

    public Comparator getComparator() {
        return comparator;
    }

    public void setComparator(Comparator comparator) {
        this.comparator = comparator;
    }

    public int getValue() {
        return value;
    }

    public void setValue(int value) {
        this.value = value;
    }

    @Override
    public SensorAnalog getSensor() {
        return sensor;
    }

    public void setSensor(SensorAnalog sensor) {
        this.sensor = sensor;
    }

    @Override
    public void accept(Visitor visitor) {
        visitor.visit(this);
    }
}
