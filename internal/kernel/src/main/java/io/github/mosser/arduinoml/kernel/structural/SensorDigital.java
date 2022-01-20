package io.github.mosser.arduinoml.kernel.structural;

import io.github.mosser.arduinoml.kernel.generator.Visitor;

public class SensorDigital extends Brick {

    @Override
    public void accept(Visitor visitor) {
        visitor.visit(this);
    }
}
