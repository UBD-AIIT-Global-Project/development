#!/usr/bin/env python

import time
import grovepi
import os
import sys

# Connect the Grove Water Sensor to digital port D2
# SIG,NC,VCC,GND
water_sensor = 2
grovepi.pinMode(water_sensor,"INPUT")

while True:
    try:
        print (grovepi.digitalRead(water_sensor))
        time.sleep(.5)
        if grovepi.digitalRead(water_sensor) == 0:
            print ("NG")
            os.system('date -R >> /home/pi/logs/water_sensor.txt')
        else:
            print ("OK")
    except IOError:
        print ("Error")