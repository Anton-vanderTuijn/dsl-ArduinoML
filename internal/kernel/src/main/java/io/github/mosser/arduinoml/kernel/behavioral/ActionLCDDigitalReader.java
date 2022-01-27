package io.github.mosser.arduinoml.kernel.behavioral;

import io.github.mosser.arduinoml.kernel.generator.Visitor;
import io.github.mosser.arduinoml.kernel.structural.IBrickPin;
import io.github.mosser.arduinoml.kernel.structural.LCD;

public class ActionLCDDigitalReader implements IActionLCD {

    private LCD lcd;
    private int rowToDisplay;
    private IBrickPin brick;

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

    public IBrickPin getBrick() {
        return brick;
    }

    public void setBrick(IBrickPin brick) {
        this.brick = brick;
    }

    @Override
    public void accept(Visitor visitor) {
        visitor.visit(this);
    }
}
