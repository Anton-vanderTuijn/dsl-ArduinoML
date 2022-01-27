package io.github.mosser.arduinoml.kernel.behavioral;

import io.github.mosser.arduinoml.kernel.generator.Visitor;
import io.github.mosser.arduinoml.kernel.structural.IState;

public class StateError implements IState {

    public static final int LED_ERROR_PIN = 8;

    private String name;
    private boolean isInitial;
    private int code;

    public int getCode() {
        return code;
    }

    public void setCode(int code) {
        this.code = code;
    }

    @Override
    public void setInitial(boolean isInitial) {
        this.isInitial = isInitial;
    }

    @Override
    public boolean isInitial() {
        return this.isInitial;
    }

    @Override
    public void setName(String name) {
        this.name = name;
    }

    @Override
    public String getName() {
        return this.name;
    }

    @Override
    public void accept(Visitor visitor) {
        visitor.visit(this);
    }
}
