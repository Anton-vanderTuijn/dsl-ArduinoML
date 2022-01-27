package io.github.mosser.arduinoml.kernel.generator;

import io.github.mosser.arduinoml.kernel.App;
import io.github.mosser.arduinoml.kernel.behavioral.*;
import io.github.mosser.arduinoml.kernel.structural.*;

import java.util.HashMap;
import java.util.Map;

public abstract class Visitor<T> {

    public abstract void visit(App app);

    public abstract void visit(State state);

    public abstract void visit(StateError error);

    public abstract void visit(Transition transition);

    public abstract void visit(ISensor sensor);

    public abstract void visit(Task task);

    public abstract void visit(ActuatorDigital actuatorDigital);

    public abstract void visit(ActuatorAnalog actuatorAnalog);

    public abstract void visit(TransitionTime transitionTime);

    public abstract void visit(ConditionDigital condition);

    public abstract void visit(ConditionAnalog condition);

    public abstract void visit(ActionLCDSimpleText action);

    public abstract void visit(ActionLCDAnalogReader action);

    public abstract void visit(ActionLCDDigitalReader action);

    public abstract void visit(ActionDigital action);

    public abstract void visit(ActionAnalog action);

    public abstract void visit(ActionSleep action);

    public abstract void visit(LCD lcd);


    /***********************
     ** Helper mechanisms **
     ***********************/

    protected Map<String, Object> context = new HashMap<>();

    protected T result;

    public T getResult() {
        return result;
    }

}

