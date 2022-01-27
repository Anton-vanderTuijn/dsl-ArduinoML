sensorDigital "button" pin 9
actuatorDigital "led1" pin 8
actuatorDigital "led2" pin 12
actuatorDigital "led3" pin 13

task {
    taskName "task"
    period 1000

    state {
        name "on"
        initial "false"
        actions {
            actionDigital "led1" becomes "high"
        }
        transitions {
            toState "off" when "button" becomes "high"
        }
    }

    state {
        name "off"
        initial "true"
        actions {
            actionDigital "led1" becomes "low"
            actionDigital "led2" becomes "low"
            actionDigital "led3" becomes "low"
        }
        transitions {
            toState "on" when "button" becomes "high"
        }
    }
}

application "Switch 2!"