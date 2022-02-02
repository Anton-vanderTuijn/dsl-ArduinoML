actuatorDigital "led" pin 8
sensorDigital "btn" pin 9

task{
    taskName "program"
    period 10

    state{
        name "off"
        initial "true"
        actions{
            actionDigital "led" becomes "low"
        }
        transitions{
            toState "on_intermediary" when "btn" becomes "high"
        }
    }

    state{
        name "on_intermediary"
        initial "false"
        transitions{
            toState "on" when "btn" becomes "low"
        }
    }

    state{
        name "on"
        initial "false"
        actions{
            actionDigital "led" becomes "high"
        }
        transitions{
            after 3000 goTo "off"
            toState "off_intermediary" when "btn" becomes "high"
        }
    }

    state{
        name "off_intermediary"
        initial "false"
        transitions{
            toState "off" when "btn" becomes "low"
            after 800 goTo "off"
        }
    }
}

application "TemporalTransition"