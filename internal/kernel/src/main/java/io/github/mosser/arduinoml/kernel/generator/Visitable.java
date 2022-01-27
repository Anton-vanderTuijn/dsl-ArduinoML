package io.github.mosser.arduinoml.kernel.generator;

public interface Visitable {

    void accept(Visitor visitor);

}
