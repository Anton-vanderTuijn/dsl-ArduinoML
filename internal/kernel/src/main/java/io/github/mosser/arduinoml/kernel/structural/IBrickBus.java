package io.github.mosser.arduinoml.kernel.structural;

import io.github.mosser.arduinoml.kernel.generator.Visitor;

public interface IBrickBus extends IBrick {

    int getBus();

    void setBus(int bus);

    @Override
    String getName();

    @Override
    void setName(String name);

    @Override
    void accept(Visitor visitor);
}
