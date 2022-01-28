package groovuinoml.dsl

import io.github.mosser.arduinoml.kernel.behavioral.*
import io.github.mosser.arduinoml.kernel.structural.*

abstract class GroovuinoMLBasescript extends Script {

    /**
     * sensorDigital "name" pin "n"
     */
    def sensorDigital(String name) {
        [pin: { n -> ((GroovuinoMLBinding) this.getBinding()).getGroovuinoMLModel().createSensorDigital(name, n) }]
    }

    /**
     * sensorAnalog "name" pin "n"
     */
    def sensorAnalog(String name) {
        [pin: { n -> ((GroovuinoMLBinding) this.getBinding()).getGroovuinoMLModel().createSensorAnalog(name, n) }]
    }

    /**
     * actuatorDigital "name" pin "n"
     */
    def actuatorDigital(String name) {
        [pin: { n -> ((GroovuinoMLBinding) this.getBinding()).getGroovuinoMLModel().createActuatorDigital(name, n) }]
    }

    /**
     * actuatorAnalog "name" pin "n"
     */
    def actuatorAnalog(String name) {
        [pin: { n -> ((GroovuinoMLBinding) this.getBinding()).getGroovuinoMLModel().createActuatorAnalog(name, n) }]
    }

    /**
     * lcd "name" cols "c" rows "r"
     */
    def lcd(String name) {
        [cols: { cols ->
            [rows: { rows ->
                [onBus: { bus ->
                    ((GroovuinoMLBinding) this.getBinding()).getGroovuinoMLModel().createLCD(name, cols, rows, bus)
                }]
            }]
        }]
    }

    /**
     * task { ... }*/
    def task(Closure closure) {
        GroovyTask groovyTask = new GroovyTask(this)
        closure.delegate = groovyTask
        closure()
        ((GroovuinoMLBinding) this.getBinding()).getGroovuinoMLModel().createTask(groovyTask.name, groovyTask.states, groovyTask.period)
    }

    /**
     * application "name"
     */
    def application(String name) {
        println(((GroovuinoMLBinding) this.getBinding()).getGroovuinoMLModel().generateCode(name).toString())
    }

    // disable run method while running
    int count = 0

    abstract void scriptBody()

    def run() {
        if (count == 0) {
            count++
            scriptBody()
        } else {
            println "Run method is disabled"
        }
    }
}

class GroovyTask {

    private GroovuinoMLBasescript baseScript

    GroovyTask(GroovuinoMLBasescript baseScript) {
        this.baseScript = baseScript
    }

    public List<IState> states = new ArrayList<>()
    public String name
    public int period

    /**
     * name "name"
     */
    def taskName(String name) {
        this.name = name
    }

    /**
     * period ms
     */
    def period(int period) {
        this.period = period
    }

    /**
     * stateError { ... }*/
    def stateError(Closure closure) {
        GroovyStateError state = new GroovyStateError(baseScript)
        closure.delegate = state
        closure()
        this.states.add(state.state)
        ((GroovuinoMLBinding) baseScript.getBinding()).getGroovuinoMLModel().createStateError(state.state.name, state.state.code)
    }

    /**
     * state { ... }*/
    def state(Closure closure) {
        GroovyState state = new GroovyState(baseScript)
        closure.delegate = state
        closure()
        this.states.add(state.state)
        ((GroovuinoMLBinding) baseScript.getBinding()).getGroovuinoMLModel().createState(state.state.name, state.state.actions, state.state.transitions, state.state.isInitial)
    }
}

class GroovyStateError {

    private GroovuinoMLBasescript baseScript

    GroovyStateError(GroovuinoMLBasescript baseScript) {
        this.baseScript = baseScript
    }

    public StateError state = new StateError()

    /**
     * name "name"
     */
    def name(String name) {
        state.setName(name)
    }

    /**
     * code number
     */
    def code(int number) {
        state.setCode(number)
    }
}

class GroovyState {

    private GroovuinoMLBasescript baseScript

    GroovyState(GroovuinoMLBasescript baseScript) {
        this.baseScript = baseScript
    }

    public State state = new State()

    /**
     * name "name"
     */
    def name(String name) {
        state.setName(name)
    }

    /**
     * initial "boolean"
     */
    def initial(String isInitial) {
        state.setInitial(Boolean.parseBoolean(isInitial))
    }

    /**
     * actions { ... }*/
    def actions(Closure closure) {
        GroovyActions actions = new GroovyActions(baseScript)
        closure.delegate = actions
        closure()
        state.setActions(actions.actions)
    }

    /**
     * transitions { ... }*/
    def transitions(Closure closure) {
        GroovyTransitions transitions = new GroovyTransitions(baseScript)
        closure.delegate = transitions
        closure()
        state.setTransitions(transitions.transitions)
    }
}

class GroovyActions {

    private GroovuinoMLBasescript baseScript

    GroovyActions(GroovuinoMLBasescript baseScript) {
        this.baseScript = baseScript
    }

    public List<IAction> actions = new ArrayList<>()

    /**
     * actionDigital "actuator" ...
     */
    def actionDigital(String actuator) {

        ActionDigital action = new ActionDigital();
        action.setActuator((ActuatorDigital) ((GroovuinoMLBinding) baseScript.getBinding()).getVariable(actuator))

        [becomes: { signal ->
            action.setSignal(signal instanceof String ? (Signal) ((GroovuinoMLBinding) baseScript.getBinding()).getVariable(signal) : (Signal) signal)
            actions.add(action)
        }]
    }

    /**
     * printText "text" on "lcd" row number ...
     */
    def printText(String text) {

        ActionLCDSimpleText action = new ActionLCDSimpleText();
        action.setText(text)

        [on: { lcd ->
            action.setLCD(lcd instanceof String ? (LCD) ((GroovuinoMLBinding) baseScript.getBinding()).getVariable(lcd) : (LCD) lcd)
            [row: { number ->
                action.setRowToDisplay(number)
                actions.add(action)
            }]
        }]
    }

    /**
     * printDigital "digitalSource" on "lcd" row number ...
     */
    def printDigital(String digitalSource) {

        ActionLCDDigitalReader action = new ActionLCDDigitalReader();
        action.setBrick((IBrickPin) ((GroovuinoMLBinding) baseScript.getBinding()).getVariable(digitalSource))

        ["valueOn": { lcd ->
            action.setLCD(lcd instanceof String ? (LCD) ((GroovuinoMLBinding) baseScript.getBinding()).getVariable(lcd) : (LCD) lcd)
            [row: { number ->
                action.setRowToDisplay(number)
                actions.add(action)
            }]
        }]
    }

    /**
     * printAnalog "analogSource" on "lcd" row number ...
     */
    def printAnalog(String analogSource) {

        ActionLCDAnalogReader action = new ActionLCDAnalogReader();
        action.setBrick((IBrickPin) ((GroovuinoMLBinding) baseScript.getBinding()).getVariable(analogSource))

        ["valueOn": { lcd ->
            action.setLCD(lcd instanceof String ? (LCD) ((GroovuinoMLBinding) baseScript.getBinding()).getVariable(lcd) : (LCD) lcd)
            [row: { number ->
                action.setRowToDisplay(number)
                actions.add(action)
            }]
        }]
    }
}

class GroovyTransitions {

    private GroovuinoMLBasescript baseScript

    GroovyTransitions(GroovuinoMLBasescript baseScript) {
        this.baseScript = baseScript
    }

    public List<ITransition> transitions = new ArrayList<>()

    /**
     * toState "state" ...
     */
    def toState(String state) {

        Transition transition = new Transition();
        try {
            transition.setTarget((IState) ((GroovuinoMLBinding) baseScript.getBinding()).getVariable(state))
        } catch (MissingPropertyException ignored) {
            ((GroovuinoMLBinding) baseScript.getBinding()).getGroovuinoMLModel().createState(state, null, null, false)
            transition.setTarget((IState) ((GroovuinoMLBinding) baseScript.getBinding()).getVariable(state))
        }

        List<ICondition> conditions = new ArrayList<>()

        // recursive closure to allow multiple and statements
        def closure
        closure = { sensor ->
            [becomes: { signal ->
                ConditionDigital condition = new ConditionDigital();
                condition.setSensor(sensor instanceof String ? (SensorDigital) ((GroovuinoMLBinding) baseScript.getBinding()).getVariable(sensor) : (SensorDigital) sensor)
                condition.setSignal(signal instanceof String ? (Signal) ((GroovuinoMLBinding) baseScript.getBinding()).getVariable(signal) : (Signal) signal)
                conditions.add(condition)
                [and: closure]
            },
             ">="   : { value ->
                 ConditionAnalog condition = new ConditionAnalog();
                 condition.setSensor(sensor instanceof String ? (SensorAnalog) ((GroovuinoMLBinding) baseScript.getBinding()).getVariable(sensor) : (SensorAnalog) sensor)
                 condition.setComparator(Comparator.GREATER_OR_EQUAL)
                 condition.setValue(value)
                 conditions.add(condition)
                 [and: closure]
             },
             "<="   : { value ->
                 ConditionAnalog condition = new ConditionAnalog();
                 condition.setSensor(sensor instanceof String ? (SensorAnalog) ((GroovuinoMLBinding) baseScript.getBinding()).getVariable(sensor) : (SensorAnalog) sensor)
                 condition.setComparator(Comparator.LESS_OR_EQUAL)
                 condition.setValue(value)
                 conditions.add(condition)
                 [and: closure]
             },
             ">"    : { value ->
                 ConditionAnalog condition = new ConditionAnalog();
                 condition.setSensor(sensor instanceof String ? (SensorAnalog) ((GroovuinoMLBinding) baseScript.getBinding()).getVariable(sensor) : (SensorAnalog) sensor)
                 condition.setComparator(Comparator.GREATER)
                 condition.setValue(value)
                 conditions.add(condition)
                 [and: closure]
             },
             "<"    : { value ->
                 ConditionAnalog condition = new ConditionAnalog();
                 condition.setSensor(sensor instanceof String ? (SensorAnalog) ((GroovuinoMLBinding) baseScript.getBinding()).getVariable(sensor) : (SensorAnalog) sensor)
                 condition.setComparator(Comparator.LESS)
                 condition.setValue(value)
                 conditions.add(condition)
                 [and: closure]
             },
             "=="   : { value ->
                 ConditionAnalog condition = new ConditionAnalog();
                 condition.setSensor(sensor instanceof String ? (SensorAnalog) ((GroovuinoMLBinding) baseScript.getBinding()).getVariable(sensor) : (SensorAnalog) sensor)
                 condition.setComparator(Comparator.EQUAL)
                 condition.setValue(value)
                 conditions.add(condition)
                 [and: closure]
             },
             "!="   : { value ->
                 ConditionAnalog condition = new ConditionAnalog();
                 condition.setSensor(sensor instanceof String ? (SensorAnalog) ((GroovuinoMLBinding) baseScript.getBinding()).getVariable(sensor) : (SensorAnalog) sensor)
                 condition.setComparator(Comparator.NOT_EQUAL)
                 condition.setValue(value)
                 conditions.add(condition)
                 [and: closure]
             }
            ]
        }
        transition.setConditions(conditions)
        transitions.add(transition)
        [when: closure]

    }
}