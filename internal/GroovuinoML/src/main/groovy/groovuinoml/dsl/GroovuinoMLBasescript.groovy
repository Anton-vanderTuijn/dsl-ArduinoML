package groovuinoml.dsl

import io.github.mosser.arduinoml.kernel.behavioral.Action
import io.github.mosser.arduinoml.kernel.behavioral.ActionLcdActuator
import io.github.mosser.arduinoml.kernel.behavioral.ActionLcdSensor
import io.github.mosser.arduinoml.kernel.behavioral.ActionLcdText
import io.github.mosser.arduinoml.kernel.behavioral.State
import io.github.mosser.arduinoml.kernel.structural.Actuator
import io.github.mosser.arduinoml.kernel.structural.Lcd
import io.github.mosser.arduinoml.kernel.structural.SIGNAL
import io.github.mosser.arduinoml.kernel.structural.Sensor

abstract class GroovuinoMLBasescript extends Script {

    /**
     * sensor "name" pin n
     */
    def sensor(String name) {
        [pin: { n -> ((GroovuinoMLBinding) this.getBinding()).getGroovuinoMLModel().createSensor(name, n) }]
    }

    /**
     * actuator "name" pin n
     */
    def actuator(String name) {
        [pin: { n -> ((GroovuinoMLBinding) this.getBinding()).getGroovuinoMLModel().createActuator(name, n) }]
    }

    /**
     * lcd "name" cols c rows r
     */
    def lcd(String name) {
        [cols: { c ->
            [rows: { r -> ((GroovuinoMLBinding) this.getBinding()).getGroovuinoMLModel().createLCD(name, c, r)
            }]
        }]
    }

    /**
     * state "name" means actuator becomes signal [and actuator becomes signal]*n
     */
    def state(String name) {

        List<Action> actions = new ArrayList<Action>()
        ((GroovuinoMLBinding) this.getBinding()).getGroovuinoMLModel().createState(name, actions)
        // recursive closure to allow multiple and statements
        def closure
        closure = { actuator ->
            [becomes        : { signal ->
                Action action = new Action()
                action.setActuator(actuator instanceof String ? (Actuator) ((GroovuinoMLBinding) this.getBinding()).getVariable(actuator) : (Actuator) actuator)
                action.setValue(signal instanceof String ? (SIGNAL) ((GroovuinoMLBinding) this.getBinding()).getVariable(signal) : (SIGNAL) signal)
                actions.add(action)
                [and: closure]
            },
             displayText    : { text ->
                 ActionLcdText action = new ActionLcdText()
                 action.setLcd(actuator instanceof String ? (Lcd) ((GroovuinoMLBinding) this.getBinding()).getVariable(actuator) : (Lcd) actuator)
                 action.setText(text)
                 actions.add(action)
             },
             displaySensor  : { sensor ->
                 ActionLcdSensor action = new ActionLcdSensor()
                 action.setLcd(actuator instanceof String ? (Lcd) ((GroovuinoMLBinding) this.getBinding()).getVariable(actuator) : (Lcd) actuator)
                 action.setSensor(sensor instanceof String ? (Sensor) ((GroovuinoMLBinding) this.getBinding()).getVariable(sensor) : (Sensor) sensor)
                 actions.add(action)
             },
             displayActuator: { act ->
                 ActionLcdActuator action = new ActionLcdActuator()
                 action.setLcd(actuator instanceof String ? (Lcd) ((GroovuinoMLBinding) this.getBinding()).getVariable(actuator) : (Lcd) actuator)
                 action.setActuator(act instanceof String ? (Actuator) ((GroovuinoMLBinding) this.getBinding()).getVariable(act) : (Actuator) act)
                 actions.add(action)
             }
            ]
        }
        [means: closure]
    }

    /**
     * error "name" code number
     */
    def error(String name) {
        [code: { number -> ((GroovuinoMLBinding) this.getBinding()).getGroovuinoMLModel().createError(name, number) }]
    }

    /**
     * initial state
     */
    def initial(String state) {
        ((GroovuinoMLBinding) this.getBinding()).getGroovuinoMLModel().setInitialState(state instanceof String ? (State) ((GroovuinoMLBinding) this.getBinding()).getVariable(state) : (State) state)
    }

    /**
     * from state1 to state2 when sensor becomes signal [and sensor becomes signal]*n
     */
    def from(String state1) {
        [to: { state2 ->

            List<Sensor> sensors = new ArrayList<>();
            List<SIGNAL> signals = new ArrayList<>();

            // recursive closure to allow multiple and statements
            def closure
            closure = { sensor ->
                [becomes: { signal ->
                    sensors.add(sensor instanceof String ? (Sensor) ((GroovuinoMLBinding) this.getBinding()).getVariable(sensor) : (Sensor) sensor)
                    signals.add(signal instanceof String ? (SIGNAL) ((GroovuinoMLBinding) this.getBinding()).getVariable(signal) : (SIGNAL) signal)

                    [and: closure]
                }]
            }

            ((GroovuinoMLBinding) this.getBinding()).getGroovuinoMLModel().createTransition(
                    state1 instanceof String ? (State) ((GroovuinoMLBinding) this.getBinding()).getVariable(state1) : (State) state1,
                    state2 instanceof String ? (State) ((GroovuinoMLBinding) this.getBinding()).getVariable(state2) : (State) state2,
                    sensors,
                    signals)

            [when: closure]
        }]
    }

    /**
     * export name
     */
    def export(String name) {
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
