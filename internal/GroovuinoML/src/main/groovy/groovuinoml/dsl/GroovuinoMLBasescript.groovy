package groovuinoml.dsl

import io.github.mosser.arduinoml.kernel.behavioral.*
import io.github.mosser.arduinoml.kernel.structural.Actuator
import io.github.mosser.arduinoml.kernel.structural.Brick
import io.github.mosser.arduinoml.kernel.structural.Lcd
import io.github.mosser.arduinoml.kernel.structural.MathOperator
import io.github.mosser.arduinoml.kernel.structural.Operators
import io.github.mosser.arduinoml.kernel.structural.Sensor
import io.github.mosser.arduinoml.kernel.structural.Signal
import io.github.mosser.arduinoml.kernel.structural.SensorAnalogical
import io.github.mosser.arduinoml.kernel.structural.SensorDigital

abstract class GroovuinoMLBasescript extends Script {

    /**
     * sensor "name" pin n
     */
    def sensor(String name) {
        [pin: { n -> ((GroovuinoMLBinding) this.getBinding()).getGroovuinoMLModel().createSensorDigital(name, n) }]
    }

    /**
     * sensor "name" pin n
     */
    def sensorAnalogical(String name) {
        [pin: { n -> ((GroovuinoMLBinding) this.getBinding()).getGroovuinoMLModel().createSensorAnalogical(name, n) }]
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

        List<ActionDigital> actions = new ArrayList<ActionDigital>()
        ((GroovuinoMLBinding) this.getBinding()).getGroovuinoMLModel().createState(name, actions)
        // recursive closure to allow multiple and statements
        def closure
        closure = { actuator ->
            [becomes        : { signal ->
                ActionDigital action = new ActionDigital()
                action.setActuator(actuator instanceof String ? (Actuator) ((GroovuinoMLBinding) this.getBinding()).getVariable(actuator) : (Actuator) actuator)
                action.setValue(signal instanceof String ? (Signal) ((GroovuinoMLBinding) this.getBinding()).getVariable(signal) : (Signal) signal)
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
                 action.setSensor(sensor instanceof String ? (SensorDigital) ((GroovuinoMLBinding) this.getBinding()).getVariable(sensor) : (SensorDigital) sensor)
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
            List<Operators> operators = new ArrayList<>();
            List<Float> values = new ArrayList<>();

            // recursive closure to allow multiple and statements
            def closure
            closure = { sensor ->
                [becomes: { signal ->
                    sensors.add(sensor instanceof String ? (SensorDigital) ((GroovuinoMLBinding) this.getBinding()).getVariable(sensor) : (SensorDigital) sensor)
                    operators.add(signal instanceof String ? (Signal) ((GroovuinoMLBinding) this.getBinding()).getVariable(signal) : (Signal) signal)
                    values.add(null)
                    [and: closure]
                },
                 ">="   : { value ->
                     sensors.add(sensor instanceof String ? (SensorAnalogical) ((GroovuinoMLBinding) this.getBinding()).getVariable(sensor) : (SensorAnalogical) sensor)
                     operators.add(MathOperator.GREATER_OR_EQUAL)
                     values.add(value)
                     [and: closure]
                 },
                 "<="   : { value ->
                     sensors.add(sensor instanceof String ? (SensorAnalogical) ((GroovuinoMLBinding) this.getBinding()).getVariable(sensor) : (SensorAnalogical) sensor)
                     operators.add(MathOperator.LESS_OR_EQUAL)
                     values.add(value)
                     [and: closure]
                 },
                 ">"   : { value ->
                     sensors.add(sensor instanceof String ? (SensorAnalogical) ((GroovuinoMLBinding) this.getBinding()).getVariable(sensor) : (SensorAnalogical) sensor)
                     operators.add(MathOperator.GREATER)
                     values.add(value)
                     [and: closure]
                 },
                 "<"   : { value ->
                     sensors.add(sensor instanceof String ? (SensorAnalogical) ((GroovuinoMLBinding) this.getBinding()).getVariable(sensor) : (SensorAnalogical) sensor)
                     operators.add(MathOperator.LESS)
                     values.add(value)
                     [and: closure]
                 },
                 "=="   : { value ->
                     sensors.add(sensor instanceof String ? (SensorAnalogical) ((GroovuinoMLBinding) this.getBinding()).getVariable(sensor) : (SensorAnalogical) sensor)
                     operators.add(MathOperator.EQUAL)
                     values.add(value)
                     [and: closure]
                 },
                 "!="   : { value ->
                     sensors.add(sensor instanceof String ? (SensorAnalogical) ((GroovuinoMLBinding) this.getBinding()).getVariable(sensor) : (SensorAnalogical) sensor)
                     operators.add(MathOperator.NOT_EQUAL)
                     values.add(value)
                     [and: closure]
                 }
                ]
            }
            ((GroovuinoMLBinding) this.getBinding()).getGroovuinoMLModel().createTransition(
                    state1 instanceof String ? (State) ((GroovuinoMLBinding) this.getBinding()).getVariable(state1) : (State) state1,
                    state2 instanceof String ? (State) ((GroovuinoMLBinding) this.getBinding()).getVariable(state2) : (State) state2,
                    sensors,
                    operators,
                    values)

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
