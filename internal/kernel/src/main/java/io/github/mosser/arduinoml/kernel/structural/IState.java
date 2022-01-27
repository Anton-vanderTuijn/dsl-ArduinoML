package io.github.mosser.arduinoml.kernel.structural;

import io.github.mosser.arduinoml.kernel.INamedConcept;
import io.github.mosser.arduinoml.kernel.generator.Visitable;
import io.github.mosser.arduinoml.kernel.generator.Visitor;

public interface IState extends INamedConcept, Visitable {

    void setInitial(boolean isInitial);

    boolean isInitial();

    @Override
    void accept(Visitor visitor);

}
