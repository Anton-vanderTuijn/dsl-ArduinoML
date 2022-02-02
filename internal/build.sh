#!/bin/bash

mvn clean install -f kernel/pom.xml
mvn clean compile assembly:single -f GroovuinoML/pom.xml