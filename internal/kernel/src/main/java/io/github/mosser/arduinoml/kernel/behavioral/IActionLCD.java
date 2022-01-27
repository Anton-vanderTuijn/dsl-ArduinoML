package io.github.mosser.arduinoml.kernel.behavioral;

import io.github.mosser.arduinoml.kernel.generator.Visitor;
import io.github.mosser.arduinoml.kernel.structural.LCD;

public interface IActionLCD extends IAction {

    void setRowToDisplay(int rowToDisplay);

    int getRowToDisplay();

    void setLCD(LCD lcd);

    LCD getLCD();

    @Override
    void accept(Visitor visitor);

}
