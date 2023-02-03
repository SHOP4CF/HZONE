#!/bin/bash

INPUT_FILE=${1:-data/InputData_Scheduler.xls}

java -jar HZones.jar $INPUT_FILE
