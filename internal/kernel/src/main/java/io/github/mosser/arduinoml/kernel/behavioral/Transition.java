package io.github.mosser.arduinoml.kernel.behavioral;

import io.github.mosser.arduinoml.kernel.generator.Visitable;
import io.github.mosser.arduinoml.kernel.generator.Visitor;
import io.github.mosser.arduinoml.kernel.structural.Operators;
import io.github.mosser.arduinoml.kernel.structural.Sensor;

import java.util.List;

public class Transition implements Visitable {

    private State next;
    private List<Sensor> sensor;
    private List<Operators> operators;
    private List<Float> values;


    public State getNext() {
        return next;
    }

    public void setNext(State next) {
        this.next = next;
    }

    public List<Sensor> getSensor() {
        return sensor;
    }

    public void setSensor(List<Sensor> sensor) {
        this.sensor = sensor;
    }

    public List<Operators> getOperators() {
        return operators;
    }

    public void setOperators(List<Operators> operators) {
        this.operators = operators;
    }

    public List<Float> getValues() {
        return values;
    }

    public void setValues(List<Float> values) {
        this.values = values;
    }

    @Override
    public void accept(Visitor visitor) {
        visitor.visit(this);
    }
}
