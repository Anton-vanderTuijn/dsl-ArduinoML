package io.github.mosser.arduinoml.kernel.behavioral;

import io.github.mosser.arduinoml.kernel.generator.Visitable;
import io.github.mosser.arduinoml.kernel.generator.Visitor;
import io.github.mosser.arduinoml.kernel.structural.SIGNAL;
import io.github.mosser.arduinoml.kernel.structural.SensorDigital;

import java.util.List;

public class Transition implements Visitable {

    private State next;
    private List<SensorDigital> sensor;
    private List<SIGNAL> value;


    public State getNext() {
        return next;
    }

    public void setNext(State next) {
        this.next = next;
    }

    public List<SensorDigital> getSensor() {
        return sensor;
    }

    public void setSensor(List<SensorDigital> sensor) {
        this.sensor = sensor;
    }

    public List<SIGNAL> getValue() {
        return value;
    }

    public void setValue(List<SIGNAL> value) {
        this.value = value;
    }

    @Override
    public void accept(Visitor visitor) {
        visitor.visit(this);
    }
}
