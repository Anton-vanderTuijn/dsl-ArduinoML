sensorDigital "button_right" pin 9
sensorDigital "button_left" pin 10
actuator "door_led" pin 12

state "open" means "door_led" becomes "high"
state "close" means "door_led" becomes "low"
error "door_exception" code 3

initial "close"

from "close" to "open" when "button_right" becomes "high"
from "close" to "open" when "button_left" becomes "high"
from "open" to "close" when "button_right" becomes "low"
from "open" to "close" when "button_left" becomes "low"

from "close" to "door_exception" when "button_right" becomes "high" and "button_left" becomes "high"
from "open" to "door_exception" when "button_right" becomes "high" and "button_left" becomes "high"

export "Exception Throwing"