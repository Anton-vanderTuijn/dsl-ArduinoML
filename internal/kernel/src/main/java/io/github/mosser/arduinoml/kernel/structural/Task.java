package io.github.mosser.arduinoml.kernel.structural;

import io.github.mosser.arduinoml.kernel.INamedConcept;
import io.github.mosser.arduinoml.kernel.generator.Visitable;
import io.github.mosser.arduinoml.kernel.generator.Visitor;

import java.util.ArrayList;
import java.util.List;

public class Task implements INamedConcept, Visitable {

    private String name;
    private int period;
    private List<IState> states = new ArrayList<>();

    public int getPeriod() {
        return period;
    }

    public void setPeriod(int period) {
        this.period = period;
    }

    public List<IState> getStates() {
        return states;
    }

    public void setStates(List<IState> states) {
        this.states = states;
    }

    @Override
    public void setName(String name) {
        this.name = name;
    }

    @Override
    public String getName() {
        return this.name;
    }

    @Override
    public void accept(Visitor visitor) {
        visitor.visit(this);
    }
}
