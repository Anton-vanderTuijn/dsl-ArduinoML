sensorDigital "button" pin 9
actuatorDigital "led" pin 12

task {
    taskName "task"
    period 10

    state {
        name "on"
        initial "false"
        actions {
            actionDigital "led" becomes "high"
        }
        transitions {
            toState "off" when "button" becomes "high"
        }
    }

    state {
        name "off"
        initial "true"
        actions {
            actionDigital "led" becomes "low"
        }
        transitions {
            toState "on" when "button" becomes "high"
        }
    }
}

application "State Based Alarm"