package io.github.mosser.arduinoml.kernel.structural;

import io.github.mosser.arduinoml.kernel.generator.Visitor;

public class LCD implements IBrickBus {

    private int bus;
    private int columns = 16;
    private int rows = 2;
    private String name;

    public int getColumns() {
        return columns;
    }

    public void setColumns(int columns) {
        this.columns = columns;
    }

    public int getRow() {
        return rows;
    }

    public void setRow(int row) {
        this.rows = row;
    }

    @Override
    public int getBus() {
        return this.bus;
    }

    @Override
    public void setBus(int bus) {
        this.bus = bus;
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
