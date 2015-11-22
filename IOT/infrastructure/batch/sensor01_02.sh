#!/bin/bash

pid=/run/sensor01_02.pid
dir=/home/pi/shell/Python/
script=FileCreate_01_02.py

case "$1" in
  start|"")
	${dir}${script}
        ps -ef | grep ${script} | grep -v grep | awk '{print $2}' > ${pid}
	;;
  restart)
        kill -9 `cat ${pid}`
        sleep 1
	${dir}${script}
        ps -ef | grep ${script} | grep -v grep | awk '{print $2}' > ${pid}
	;;
  stop)
        kill -9 `cat ${pid}`
	;;
esac
