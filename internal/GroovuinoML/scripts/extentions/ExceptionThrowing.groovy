sensorDigital "button_right" pin 9
sensorDigital "button_left" pin 10
actuatorDigital "door_led" pin 12

task {
    taskName "task"
    period 1000

    state {
        name "open"
        initial "false"
        actions {
            actionDigital "door_led" becomes "high"
        }
        transitions {
            toState "close" when "button_right" becomes "low"
            toState "close" when "button_left" becomes "low"
            toState "door_exception" when "button_right" becomes "high" and "button_left" becomes "high"
        }
    }

    state {
        name "close"
        initial "true"
        actions {
            actionDigital "door_led" becomes "low"
        }
        transitions {
            toState "open" when "button_right" becomes "high"
            toState "open" when "button_left" becomes "high"
            toState "door_exception" when "button_right" becomes "high" and "button_left" becomes "high"
        }
    }

    stateError {
        name "door_exception"
        code 3
    }
}

application "Exception Throwing"