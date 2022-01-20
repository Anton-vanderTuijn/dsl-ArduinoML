sensorAnalogical "temperature" pin 1
actuator "buzzer" pin 12

state "overheat" means "buzzer" becomes "high"
state "normal" means "buzzer" becomes "low"

initial "normal"

from "normal" to "overheat" when "temperature" ">=" 220
from "overheat" to "normal" when "temperature" "<" 220

export "Analogical Bricks"