sensorDigital "button_1" pin 9
sensorDigital "button_2" pin 10
actuatorDigital "buzzer" pin 12

task {
    taskName "task"
    period 10

    state {
        name "off_1"
        initial "true"
        actions {
            actionDigital "buzzer" becomes "low"
        }
        transitions {
            toState "on" when "button_1" becomes "high" and "button_2" becomes "high"
        }
    }

    state {
        name "off_2"
        initial "false"
        actions {
            actionDigital "buzzer" becomes "low"
        }
        transitions {
            toState "on" when "button_1" becomes "high" and "button_2" becomes "high"
        }
    }

    state {
        name "on"
        initial "false"
        actions {
            actionDigital "buzzer" becomes "high"
        }
        transitions {
            toState "off_1" when "button_1" becomes "low"
            toState "off_2" when "button_2" becomes "low"
        }
    }
}

application "Dual check Alarm"