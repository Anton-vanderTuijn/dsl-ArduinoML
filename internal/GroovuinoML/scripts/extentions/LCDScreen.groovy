lcd "lcd" cols 16 rows 2
sensorDigital "button" pin 9
actuator "led" pin 8

state "text" means "lcd" displayText "Hello World!"
state "sensor" means "lcd" displaySensor "button"
state "actuator" means "lcd" displayActuator "led" and "lcd" displayText "!"


initial "text"

from "text" to "sensor" when "button" becomes "high"
from "sensor" to "actuator" when "button" becomes "high"
from "actuator" to "text" when "button" becomes "high"

export "Supporting the LCD screen"