sensor "button" pin 9
actuator "buzzer" pin 11
actuator "led" pin 12

state "on_buzzer" means "buzzer" becomes "high"
state "off_buzzer_on_led" means "buzzer" becomes "low" and "led" becomes "high"
state "off_led" means "led" becomes "low"

initial "off_led"

from "off_led" to "on_buzzer" when "button" becomes "high"
from "on_buzzer" to "off_buzzer_on_led" when "button" becomes "high"
from "off_buzzer_on_led" to "off_led" when "button" becomes "high"

export "Multi State Alarm"