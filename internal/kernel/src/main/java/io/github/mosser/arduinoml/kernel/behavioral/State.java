package io.github.mosser.arduinoml.kernel.behavioral;

import io.github.mosser.arduinoml.kernel.generator.Visitor;
import io.github.mosser.arduinoml.kernel.structural.IState;
import io.github.mosser.arduinoml.kernel.structural.ITransition;

import java.util.ArrayList;
import java.util.List;

public class State implements IState {

    private String name;
    private boolean isInitial;
    private List<IAction> actions = new ArrayList<>();
    private List<ITransition> transitions = new ArrayList<>();


    public List<IAction> getActions() {
        return actions;
    }

    public void setActions(List<IAction> actions) {
        this.actions = actions;
    }

    public List<ITransition> getTransitions() {
        return transitions;
    }

    public void setTransitions(List<ITransition> transitions) {
        this.transitions = transitions;
    }

    @Override
    public void setInitial(boolean isInitial) {
        this.isInitial = isInitial;
    }

    @Override
    public boolean isInitial() {
        return this.isInitial;
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
