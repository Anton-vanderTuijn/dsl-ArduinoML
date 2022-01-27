package io.github.mosser.arduinoml.kernel.structural;

import io.github.mosser.arduinoml.kernel.generator.Visitor;

public class SensorAnalog implements ISensor {

    private int pin;
    private String name;

    @Override
    public int getPin() {
        return this.pin;
    }

    @Override
    public void setPin(int pin) {
        this.pin = pin;
    }

    @Override
    public String getName() {
        return this.name;
    }

    @Override
    public void setName(String name) {
        this.name = name;
    }

    @Override
    public void accept(Visitor visitor) {
        visitor.visit(this);
    }

}
