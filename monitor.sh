#!/bin/bash
mem=`cat /proc/meminfo`
memTotal=`echo ${mem} | cut -d ':' -f 2 | cut -d ' ' -f 2` 
memFree=`echo ${mem} | cut -d ':' -f 3 | cut -d ' ' -f 2` 
let memUsed=(${memFree}\*100)/${memTotal}
let memUsed=100-${memUsed}
disk=`df`
disk=`echo ${disk} | cut -d '%' -f 2 | cut -d ' ' -f 8`
temp=`/opt/vc/bin/vcgencmd measure_temp`
temp=`echo ${temp} | cut -d '=' -f 2`
temp=${temp::-4}
cpu=`uptime`
cpu=`echo ${cpu} | cut -d 'l' -f 2 | cut -d ' ' -f 5`
cpu=${cpu:2:-1}
broadband=`sudo speedtest-cli`
download=`echo ${broadband} | cut -d ':' -f 3 | cut -d 'M' -f 1`
download=${download:1:-1}
upload=`echo ${broadband} | cut -d ':' -f 4 | cut -d 'M' -f 1`
send=`sudo python /home/pi/Documents/Sisoper/Raspberry/webServices.py ${cpu} ${memUsed} ${disk} ${download} ${upload} ${temp}`
echo "CPU : "${cpu} "%"
echo "Memoria : "${memUsed} "%"
echo "Disco : "${disk} "%"
echo "Descarga : "${download} "Mbit/s"
echo "Carga : "${upload} "Mbit/s"
echo "Temperatura : "${temp} "Cº"
echo "Estado envìo : "${send}
echo `date`
echo "----------------------------------------------FIN--------------------------------------------------------------"
