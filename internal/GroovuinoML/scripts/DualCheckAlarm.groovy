sensor "button_1" pin 9
sensor "button_2" pin 10
actuator "led" pin 12

state "off_1" means "led" becomes "low"
state "off_2" means "led" becomes "low"
state "on" means "led" becomes "high"

initial "off_1"

from "on" to "off_1" when "button_1" becomes "low"
from "on" to "off_2" when "button_2" becomes "low"

from "off_1" to "on" when "button_1" becomes "high" and "button_2" becomes "high"
from "off_2" to "on" when "button_1" becomes "high" and "button_2" becomes "high"

export "Dual check Alarm"