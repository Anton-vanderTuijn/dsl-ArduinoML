sensorDigital "button_1" pin 9
sensorDigital "button_2" pin 10
actuatorDigital "led" pin 12

task {
    taskName "task"
    period 1000

    state {
        name "off_1"
        initial "true"
        actions {
            actionDigital "led" becomes "low"
        }
        transitions {
            toState "on" when "button_1" becomes "high" and "button_2" becomes "high"
        }
    }

    state {
        name "off_2"
        initial "false"
        actions {
            actionDigital "led" becomes "low"
        }
        transitions {
            toState "on" when "button_1" becomes "high" and "button_2" becomes "high"
        }
    }

    state {
        name "on"
        initial "false"
        actions {
            actionDigital "led" becomes "high"
        }
        transitions {
            toState "off_1" when "button_1" becomes "low"
            toState "off_2" when "button_2" becomes "low"
        }
    }
}

application "Dual check Alarm"