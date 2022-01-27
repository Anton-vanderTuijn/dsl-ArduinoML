package io.github.mosser.arduinoml.kernel.structural;

import io.github.mosser.arduinoml.kernel.generator.Visitor;

public interface IBrickPin extends IBrick {

    int getPin();

    void setPin(int pin);

    @Override
    String getName();

    @Override
    void setName(String name);

    @Override
    void accept(Visitor visitor);

}