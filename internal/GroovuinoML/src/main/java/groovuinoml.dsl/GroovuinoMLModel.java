package groovuinoml.dsl;

import groovy.lang.Binding;
import io.github.mosser.arduinoml.kernel.App;
import io.github.mosser.arduinoml.kernel.behavioral.IAction;
import io.github.mosser.arduinoml.kernel.behavioral.State;
import io.github.mosser.arduinoml.kernel.behavioral.StateError;
import io.github.mosser.arduinoml.kernel.generator.ToWiring;
import io.github.mosser.arduinoml.kernel.generator.Visitor;
import io.github.mosser.arduinoml.kernel.structural.*;

import java.util.ArrayList;
import java.util.List;

public class GroovuinoMLModel {
    private List<IBrick> bricks;
    private List<IState> states;
    private List<Task> tasks;

    private Binding binding;

    public GroovuinoMLModel(Binding binding) {
        this.bricks = new ArrayList<>();
        this.states = new ArrayList<>();
        this.tasks = new ArrayList<>();
        this.binding = binding;
    }

    public void createLCD(String name, Integer cols, Integer rows, Integer bus) {
        LCD lcd = new LCD();
        lcd.setName(name);
        lcd.setColumns(cols);
        lcd.setBus(bus);
        lcd.setRow(rows);
        this.bricks.add(lcd);
        this.binding.setVariable(name, lcd);
    }

    public void createSensorDigital(String name, Integer pinNumber) {
        SensorDigital sensor = new SensorDigital();
        sensor.setName(name);
        sensor.setPin(pinNumber);
        this.bricks.add(sensor);
        this.binding.setVariable(name, sensor);
    }

    public void createSensorAnalog(String name, Integer pinNumber) {
        SensorAnalog sensor = new SensorAnalog();
        sensor.setName(name);
        sensor.setPin(pinNumber);
        this.bricks.add(sensor);
        this.binding.setVariable(name, sensor);
    }

    public void createActuatorDigital(String name, Integer pinNumber) {
        ActuatorDigital actuator = new ActuatorDigital();
        actuator.setName(name);
        actuator.setPin(pinNumber);
        this.bricks.add(actuator);
        this.binding.setVariable(name, actuator);
    }

    public void createActuatorAnalog(String name, Integer pinNumber) {
        ActuatorAnalog actuator = new ActuatorAnalog();
        actuator.setName(name);
        actuator.setPin(pinNumber);
        this.bricks.add(actuator);
        this.binding.setVariable(name, actuator);
    }

    public void createState(String name, List<IAction> actions, List<ITransition> transitions, boolean isInitial) {
        State state = new State();
        state.setName(name);
        state.setActions(actions);
        state.setTransitions(transitions);
        state.setInitial(isInitial);
        this.states.add(state);
        this.binding.setVariable(name, state);
    }

    public void createTask(String name, List<IState> states, int period) {
        Task task = new Task();
        task.setStates(states);
        task.setPeriod(period);
        task.setName(name);
        this.tasks.add(task);
        this.binding.setVariable(name, task);
    }

    public void createStateError(String name, Integer code) {
        StateError error = new StateError();
        error.setName(name);
        error.setCode(code);
        error.setInitial(false);
        this.states.add(error);
        this.binding.setVariable(name, error);
    }


    @SuppressWarnings("rawtypes")
    public Object generateCode(String appName) {
        App app = new App();
        app.setName(appName);
        app.setBricks(this.bricks);
        app.setTasks(this.tasks);
        Visitor codeGenerator = new ToWiring();
        app.accept(codeGenerator);

        return codeGenerator.getResult();
    }
}
