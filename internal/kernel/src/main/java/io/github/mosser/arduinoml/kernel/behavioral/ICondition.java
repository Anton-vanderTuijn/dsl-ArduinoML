package io.github.mosser.arduinoml.kernel.behavioral;

import io.github.mosser.arduinoml.kernel.generator.Visitable;
import io.github.mosser.arduinoml.kernel.generator.Visitor;
import io.github.mosser.arduinoml.kernel.structural.ISensor;

public interface ICondition extends Visitable {

    ISensor getSensor();

    @Override
    void accept(Visitor visitor);
}
