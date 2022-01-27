package io.github.mosser.arduinoml.kernel.structural;

import io.github.mosser.arduinoml.kernel.INamedConcept;
import io.github.mosser.arduinoml.kernel.generator.Visitable;
import io.github.mosser.arduinoml.kernel.generator.Visitor;

public interface IBrick extends INamedConcept, Visitable {

    @Override
    String getName();

    @Override
    void setName(String name);

    @Override
    void accept(Visitor visitor);
}
