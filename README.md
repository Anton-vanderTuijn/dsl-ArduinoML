# 🇩.🇸.🇱 - (ArduinoML)

![illustration image](./assets/readmeImage.png)

## Team ADSL2

Members | Contact
----------------------------------------------------------- | ----------------------------------------------------------
[Anthony Barna](https://github.com/Anthony-Barna)           | [anthony.barna@etu.univ-cotedazur.fr](mailto:anthony.barna@etu.univ-cotedazur.fr)
[Leo Burette](https://github.com/LeoBurette)                | [leo.burette@etu.univ-cotedazur.fr](mailto:leo.burette@etu.univ-cotedazur.fr)
[Lara Defendini](https://github.com/Laradefendini)          | [lara.defendini@etu.univ-cotedazur.fr](mailto:lara.defendini@etu.univ-cotedazur.fr)
[Guillaume Savornin](https://github.com/GuillaumeSavornin)  | [guillaume.savornin@etu.univ-cotedazur.fr](mailto:guillaume.savornin@etu.univ-cotedazur.fr)
[Anton van der Tuijn](https://github.com/Anton-vanderTuijn) | [anton.van-der-tuijn@etu.univ-cotedazur.fr](mailto:anton.van-der-tuijn@etu.univ-cotedazur.fr)


## Project structure

- The ```external``` directory contains an approach using MPS (more [here](#MPS))
- The ```internal``` directory contains an approach using Groovy (more [here](#Groovy))
- The ```document``` directory contains the subject and our report
- We standardize the Arduino sensor and actuators connection used (more [here](#Arduino))

---

## External DSL: MPS <a name="MPS"></a>
TBD: how to run

### Syntax language
TBD

### Scenarios supported

Basic scenarios:
- [X] Very simple alarm
- [X] Dual-check alarm
- [X] State-based alarm
- [X] Multi-state alarm

“A la carte” features:
- [X] Exception Throwing
- [X] Temporal transitions
- [X] Supporting the LCD screen
- [X] Handling Analogical Bricks
- [X] Parallel periodic Region

### Requirements
- [MPS](https://www.jetbrains.com/mps/)

## Internal DSL: Groovy <a name="Groovy"></a>

To run the project move into the internal directory which contain the Groovy implementation </br>
First you must run ```build.sh``` to build the project. </br>
Then in the GroovuinoML folder you can launch a script using ```run.sh```. </br>

> example: ./run.sh scripts/base/VerySimpleAlarm.groovy </br>

The scenarios emplemented can be found under ```./scripts/base``` and ```./scripts/extensions```. </br>
The script code for the arduino will be outputed in the ```program.ino``` file. </br>

### Syntax language

```groovy
sensorDigital "name" pin "n"
sensorAnalogical "name" pin "n"
actuator "name" pin "n"
lcd "name" cols "c" rows "r"

state "name" means "actuator" {becomes "signal" | displayText "text" | displaySensor "sensor" | displayActuator "act"} [and "actuator" {becomes "signal" | displayText "text" | displaySensor "sensor" | displayActuator "act"}]*n

error "name" code "number"

initial "state"

from "state1" to "state2" when "sensor" {becomes "signal" | >= "value" | <= "value" | > "value" | < "value" | == "value" | != "value"} [and "sensor" {becomes "signal" | >= "value" | <= "value" | > "value" | < "value" | == "value" | != "value"}]*n

export "name"
```

#### Syntax exemple

```groovy
sensorDigital "button" pin 9
actuator "led" pin 12
actuator "buzzer" pin 11

state "on" means "led" becomes "high" and "buzzer" becomes "high"
state "off" means "led" becomes "low" and "buzzer" becomes "low"

initial "off"

from "on" to "off" when "button" becomes "low"
from "off" to "on" when "button" becomes "high"

export "Very Simple Alarm"
```

### Scenarios supported

Basic scenarios:
- [X] Very simple alarm
- [X] Dual-check alarm
- [X] State-based alarm
- [X] Multi-state alarm

“A la carte” features:
- [X] Exception Throwing
- [ ] Temporal transitions
- [X] Supporting the LCD screen
- [X] Handling Analogical Bricks
- [ ] Parallel periodic Region

### Requirements
- [Groovy](https://groovy-lang.org/)
- Maven
- Java 8

---

## Arduino sensor and actuators connection <a name="Arduino"></a>

The following table was used to define the sensor and actuators connection pins for all the scenarios implemented.
Of course, you can change the configuration to suit your needs

Component | Type | Pin(s)
------------------ | ---------------- | ---------------------------------
Button 1           | sensorDigital    | 9
Button 2           | sensorDigital    | 10
Buzzer             | actuator         | 11
Led 1              | actuator         | 12
Led 2              | actuator         | 13
Error Led          | actuator         | 8
Temperature sensor | sensorAnalogical | A1
LCD screen         | lcd              | 10, 11, 12, 13, 14, 15, 16 (bus2)* 

*Lcd screen pins for bus 2 are hardcoded, so no need to give them

<!--
## Distribution of points (500)

Member | Points
----------------------------------------------------------- | ----------------------------------------------------------
[Anthony Barna](https://github.com/Anthony-Barna)           | X
[Leo Burette](https://github.com/LeoBurette)                | X
[Lara Defendini](https://github.com/Laradefendini)          | X
[Guillaume Savornin](https://github.com/GuillaumeSavornin)  | X
[Anton van der Tuijn](https://github.com/Anton-vanderTuijn) | X
-->

---

![logo_polytech](assets/image_full.png)

 
