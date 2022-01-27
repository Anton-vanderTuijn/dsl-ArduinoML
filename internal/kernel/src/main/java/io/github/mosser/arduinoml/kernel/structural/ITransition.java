package io.github.mosser.arduinoml.kernel.structural;

import io.github.mosser.arduinoml.kernel.generator.Visitable;
import io.github.mosser.arduinoml.kernel.generator.Visitor;

public interface ITransition extends Visitable {

    void setTarget(IState state);

    IState getTarget();


    @Override
    void accept(Visitor visitor);
}
