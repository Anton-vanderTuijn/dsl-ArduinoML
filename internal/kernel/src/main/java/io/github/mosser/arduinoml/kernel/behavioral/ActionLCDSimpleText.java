package io.github.mosser.arduinoml.kernel.behavioral;

import io.github.mosser.arduinoml.kernel.generator.Visitor;
import io.github.mosser.arduinoml.kernel.structural.LCD;

public class ActionLCDSimpleText implements IActionLCD {

    private String text;
    private LCD lcd;
    private int rowToDisplay;


    public String getText() {

        //TODO Limit text size

//        if (text.length() > (lcd.getCols() * lcd.getRow())) {
//            return "too long";
//        } else {
        return text;
//        }
    }

    public void setText(String text) {
        this.text = text;
    }

    @Override
    public void setRowToDisplay(int rowToDisplay) {
        this.rowToDisplay = rowToDisplay;
    }

    @Override
    public int getRowToDisplay() {
        return this.rowToDisplay;
    }

    @Override
    public void setLCD(LCD lcd) {
        this.lcd = lcd;
    }

    @Override
    public LCD getLCD() {
        return this.lcd;
    }

    @Override
    public void accept(Visitor visitor) {
        visitor.visit(this);
    }
}
