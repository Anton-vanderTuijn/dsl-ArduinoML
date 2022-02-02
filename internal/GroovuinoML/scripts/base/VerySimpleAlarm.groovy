sensorDigital "button" pin 9
actuatorDigital "led" pin 12
actuatorDigital "buzzer" pin 11

task {
    taskName "task"
    period 10

    state {
        name "on"
        initial "false"
        actions {
            actionDigital "led" becomes "high"
            actionDigital "buzzer" becomes "high"
        }
        transitions {
            toState "off" when "button" becomes "low"
        }
    }

    state {
        name "off"
        initial "true"
        actions {
            actionDigital "led" becomes "low"
            actionDigital "buzzer" becomes "low"
        }
        transitions {
            toState "on" when "button" becomes "high"
        }
    }
}

application "Very Simple Alarm"