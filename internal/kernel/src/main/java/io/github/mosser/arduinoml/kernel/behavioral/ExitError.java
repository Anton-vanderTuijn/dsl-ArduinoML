package io.github.mosser.arduinoml.kernel.behavioral;

import io.github.mosser.arduinoml.kernel.generator.Visitor;

public class ExitError extends State {

    public static final int LED_ERROR_PIN = 8;

    private int code;

    public int getCode() {
        return code;
    }

    public void setCode(int code) {
        this.code = code;
    }

    @Override
    public void accept(Visitor visitor) {
        visitor.visit(this);
    }
}
