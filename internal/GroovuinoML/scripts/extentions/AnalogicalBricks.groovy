sensorAnalog "temperature" pin 1
actuatorDigital "buzzer" pin 11

task {
    taskName "task"
    period 1000

    state {
        name "overheat"
        initial "false"
        actions {
            actionDigital "buzzer" becomes "high"
        }
        transitions {
            toState "normal" when "temperature" "<" 220
        }
    }

    state {
        name "normal"
        initial "true"
        actions {
            actionDigital "buzzer" becomes "low"
        }
        transitions {
            toState "overheat" when "temperature" ">=" 220
        }
    }
}

application "Analogical Bricks"