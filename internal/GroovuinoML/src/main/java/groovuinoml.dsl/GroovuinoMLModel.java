package groovuinoml.dsl;

import groovy.lang.Binding;
import io.github.mosser.arduinoml.kernel.App;
import io.github.mosser.arduinoml.kernel.behavioral.*;
import io.github.mosser.arduinoml.kernel.generator.ToWiring;
import io.github.mosser.arduinoml.kernel.generator.Visitor;
import io.github.mosser.arduinoml.kernel.structural.*;
import io.github.mosser.arduinoml.kernel.structural.Sensor;

import java.util.ArrayList;
import java.util.List;

public class GroovuinoMLModel {
    private List<Brick> bricks;
    private List<State> states;
    private State initialState;

    private Binding binding;

    public GroovuinoMLModel(Binding binding) {
        this.bricks = new ArrayList<Brick>();
        this.states = new ArrayList<State>();
        this.binding = binding;
    }

    public void createSensorDigital(String name, Integer pinNumber) {
        SensorDigital sensor = new SensorDigital();
        sensor.setName(name);
        sensor.setPin(pinNumber);
        this.bricks.add(sensor);
        this.binding.setVariable(name, sensor);
//		System.out.println("> sensor " + name + " on pin " + pinNumber);
    }

    public void createSensorAnalogical(String name, Integer pinNumber) {
        SensorAnalogical sensor = new SensorAnalogical();
        sensor.setName(name);
        sensor.setPin(pinNumber);
        this.bricks.add(sensor);
        this.binding.setVariable(name, sensor);
    }

    public void createActuator(String name, Integer pinNumber) {
        Actuator actuator = new Actuator();
        actuator.setName(name);
        actuator.setPin(pinNumber);
        this.bricks.add(actuator);
        this.binding.setVariable(name, actuator);
    }

    public void createLCD(String name, Integer cols, Integer rows) {
        Lcd lcd = new Lcd();
        lcd.setName(name);
        lcd.setCols(cols);
        lcd.setRow(rows);
        this.bricks.add(lcd);
        this.binding.setVariable(name, lcd);
    }

    public void createState(String name, List<Action> actions) {
        State state = new State();
        state.setName(name);
        state.setActions(actions);
        this.states.add(state);
        this.binding.setVariable(name, state);
    }

    public void createError(String name, Integer code) {
        ExitError error = new ExitError();
        error.setName(name);
        error.setCode(code);
        this.states.add(error);
        this.binding.setVariable(name, error);
    }

    public void createTransition(State from, State to, List<Sensor> sensor, List<Operators> operators, List<Float> values) {
        Transition transition = new Transition();
        transition.setNext(to);
        transition.setSensor(sensor);
        transition.setOperators(operators);
        transition.setValues(values);
        from.addTransition(transition);
    }

    public void setInitialState(State state) {
        this.initialState = state;
    }

    @SuppressWarnings("rawtypes")
    public Object generateCode(String appName) {
        App app = new App();
        app.setName(appName);
        app.setBricks(this.bricks);
        app.setStates(this.states);
        app.setInitial(this.initialState);
        Visitor codeGenerator = new ToWiring();
        app.accept(codeGenerator);

        return codeGenerator.getResult();
    }
}
