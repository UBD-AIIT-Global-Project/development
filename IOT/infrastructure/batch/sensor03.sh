#!/bin/bash

pid=/run/sensor03.pid
dir=/home/pi/shell/Python/
script=FileCreate_03.py

case "$1" in
  start|"")
	python ${dir}${script} &
        ps -ef | grep ${script} | grep -v grep | awk '{print $2}' > ${pid}
	;;
  restart)
        kill -9 `cat ${pid}`
        sleep 1
	python ${dir}${script} &
        ps -ef | grep ${script} | grep -v grep | awk '{print $2}' > ${pid}
	;;
  stop)
        kill -9 `cat ${pid}`
	;;
esac
