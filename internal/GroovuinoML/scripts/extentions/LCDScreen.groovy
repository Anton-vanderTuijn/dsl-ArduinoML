lcd "lcd" cols 16 rows 2 onBus 2
sensorDigital "button" pin 9
actuatorAnalog "led" pin 1

task {
    taskName "task"
    period 100

    state {
        name "text"
        initial "true"
        actions {
            printText "Hello World!" on "lcd" row 0
            printText "!World Hello" on "lcd" row 1
        }
        transitions {
            toState "sensor" when "button" becomes "high"
        }
    }

    state {
        name "sensor"
        initial "false"
        actions {
            printDigital "button" valueOn "lcd" row 1
        }
        transitions {
            toState "actuator" when "button" becomes "high"
        }
    }

    state {
        name "actuator"
        initial "false"
        actions {
            printAnalog "led" valueOn "lcd" row 0
        }
        transitions {
            toState "text" when "button" becomes "high"
        }
    }
}

application "Supporting the LCD screen"
