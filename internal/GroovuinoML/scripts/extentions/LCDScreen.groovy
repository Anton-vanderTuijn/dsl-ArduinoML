lcd "lcd" cols 16 rows 2 onBus 2
sensorDigital "button" pin 9
actuatorDigital "led" pin 8

task {
    taskName "task"
    period 1000

    state {
        name "text"
        initial "true"
        actions {
            printText "Hello World!" on "lcd" row 1
            printText "!World Hello" on "lcd" row 2
        }
        transitions {
            toState "sensor" when "button" becomes "high"
        }
    }

    state {
        name "sensor"
        initial "false"
        actions {
            printDigital "button" on "lcd" row 2
        }
        transitions {
            toState "actuator" when "button" becomes "high"
        }
    }

    state {
        name "actuator"
        initial "false"
        actions {
            printAnalog "led" on "lcd" row 1
        }
        transitions {
            toState "text" when "button" becomes "high"
        }
    }
}

application "Supporting the LCD screen"
