package io.github.mosser.arduinoml.kernel.behavioral;

import io.github.mosser.arduinoml.kernel.generator.Visitor;
import io.github.mosser.arduinoml.kernel.structural.IState;
import io.github.mosser.arduinoml.kernel.structural.ITransition;

public class TransitionTime implements ITransition {

    private IState target;
    private int timeBeforeTransition;

    public int getTimeBeforeTransition() {
        return timeBeforeTransition;
    }

    public void setTimeBeforeTransition(int timeBeforeTransition) {
        this.timeBeforeTransition = timeBeforeTransition;
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
