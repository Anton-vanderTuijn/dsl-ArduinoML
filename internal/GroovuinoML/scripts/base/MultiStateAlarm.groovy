sensorDigital "button" pin 9
actuatorDigital "buzzer" pin 11
actuatorDigital "led" pin 12

task {
    taskName "task"
    period 10

    state {
        name "on_buzzer"
        initial "false"
        actions {
            actionDigital "buzzer" becomes "high"
        }
        transitions {
            toState "off_buzzer_on_led" when "button" becomes "high"
        }
    }

    state {
        name "off_buzzer_on_led"
        initial "false"
        actions {
            actionDigital "led" becomes "high"
            actionDigital "buzzer" becomes "low"
        }
        transitions {
            toState "off_led" when "button" becomes "high"
        }
    }

    state {
        name "off_led"
        initial "true"
        actions {
            actionDigital "led" becomes "low"
        }
        transitions {
            toState "on_buzzer" when "button" becomes "high"
        }
    }
}

application "Multi State Alarm"