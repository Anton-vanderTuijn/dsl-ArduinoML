package io.github.mosser.arduinoml.kernel.structural;

import io.github.mosser.arduinoml.kernel.generator.Visitor;

public interface ISensor extends IBrickPin {

    @Override
    int getPin();

    @Override
    void setPin(int pin);

    @Override
    String getName();

    @Override
    void setName(String name);

    @Override
    void accept(Visitor visitor);
}

