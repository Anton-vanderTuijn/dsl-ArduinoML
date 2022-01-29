actuatorDigital "led1" pin 8
actuatorDigital "led2" pin 9
sensorDigital "btn1" pin 10
sensorDigital "btn2" pin 11

task{
    taskName "program1"
    period 500

    state{
        name "stateOff"
        initial "true"
        actions{
            actionDigital "led1" becomes "low"
        }
        transitions {
            toState "stateOn" when "btn1" becomes "high"
        }
    }

    state{
        name "stateOn"
        initial "false"
        actions{
            actionDigital "led1" becomes "high"
        }
        transitions {
            toState "stateOff" when "btn1" becomes "low"
        }
    }
}

task{
    taskName "program2"
    period 50

    state{
        name "stateOff2"
        initial "true"
        actions{
            actionDigital "led2" becomes "low"
        }
        transitions {
            toState "stateOn2" when "btn2" becomes "high"
        }
    }

    state{
        name "stateOn2"
        initial "false"
        actions{
            actionDigital "led2" becomes "high"
        }
        transitions {
            toState "stateOff2" when "btn2" becomes "low"
        }
    }
}

application "Parallel"