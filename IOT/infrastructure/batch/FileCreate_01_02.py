#!/usr/bin/python

from grovepi import *
from datetime import datetime
import locale
import os.path
dht_sensor_port = 7
logdir="/home/pi/shell/log/"

while True:
  today = datetime.now().strftime("%Y%m%d")
  time = datetime.now().strftime("%H%M")
  file_Temp = logdir + today + "_01_SENSOR.log"
  file_Hum = logdir + today + "_02_SENSOR.log"
  f_Temp = open(file_Temp, "w")
  f_Hum = open(file_Hum, "w")
  cnt = 0
  while True:
    cnt += 1
    if cnt == 100:
      break
    [ temp,hum ] = dht(dht_sensor_port,1)
    temp = "%08d" % (temp)
    hum = "%08d" % (hum)
    f_Temp.write(today + time + "," + temp + "\n") 
    f_Hum.write(today + time + "," + hum + "\n") 
  

