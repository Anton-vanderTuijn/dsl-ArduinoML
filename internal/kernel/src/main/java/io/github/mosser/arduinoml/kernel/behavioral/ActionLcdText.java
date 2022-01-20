package io.github.mosser.arduinoml.kernel.behavioral;

import io.github.mosser.arduinoml.kernel.generator.Visitor;
import io.github.mosser.arduinoml.kernel.structural.Lcd;

public class ActionLcdText extends Action {

    private String text;
    private Lcd lcd;

    public Lcd getLcd() {
        return lcd;
    }

    public void setLcd(Lcd lcd) {
        this.lcd = lcd;
    }

    public String getText() {
        return text;
    }

    public void setText(String text) {
        this.text = text;
    }

    @Override
    public void accept(Visitor visitor) {
        visitor.visit(this);
    }
}
