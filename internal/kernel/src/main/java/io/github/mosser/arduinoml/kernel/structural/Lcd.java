package io.github.mosser.arduinoml.kernel.structural;

import io.github.mosser.arduinoml.kernel.generator.Visitor;

public class Lcd extends Brick {

    private Integer[] pins = new Integer[]{10, 11, 12, 13, 14, 15, 16};
    private int cols = 16;
    private int row = 2;

    public Integer[] getPins() {
        return pins;
    }

    public void setPins(Integer[] pins) {
        this.pins = pins;
    }

    public int getCols() {
        return cols;
    }

    public void setCols(int cols) {
        this.cols = cols;
    }

    public int getRow() {
        return row;
    }

    public void setRow(int row) {
        this.row = row;
    }

    @Override
    public void accept(Visitor visitor) {
        visitor.visit(this);
    }
}
