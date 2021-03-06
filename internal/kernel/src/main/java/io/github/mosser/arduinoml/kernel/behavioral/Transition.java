package io.github.mosser.arduinoml.kernel.behavioral;

import io.github.mosser.arduinoml.kernel.generator.Visitor;
import io.github.mosser.arduinoml.kernel.structural.IState;
import io.github.mosser.arduinoml.kernel.structural.ITransition;

import java.util.ArrayList;
import java.util.List;

public class Transition implements ITransition {

    private IState target;
    private List<ICondition> conditions = new ArrayList<>();


    public List<ICondition> getConditions() {
        return conditions;
    }

    public void setConditions(List<ICondition> conditions) {
        this.conditions = conditions;
    }

    @Override
    public void setTarget(IState target) {
        this.target = target;
    }

    @Override
    public IState getTarget() {
        return this.target;
    }

    @Override
    public void accept(Visitor visitor) {
        visitor.visit(this);
    }
}
