#!/bin/bash

# infopc.sh 
# -script for linux pc
# -write technical informations in file  info-NOMPC.txt

# date
DATE=$(date +"%x %H:%M:%S")

# nom pc
echo " > saisir le nom du pc : "
read NOMPC


# compil des infos
echo "Machine  :  $NOMPC " >  info-$NOMPC.txt
echo "Date     :  $DATE " >>  info-$NOMPC.txt
echo " ------- " >>  info-$NOMPC.txt
cat /etc/issue.net >>  info-$NOMPC.txt
echo " ------- " >>  info-$NOMPC.txt
uname -a >>  info-$NOMPC.txt
echo " ------- " >>  info-$NOMPC.txt
cat /proc/cpuinfo >>  info-$NOMPC.txt
echo " ------- " >>  info-$NOMPC.txt
vmstat >>  info-$NOMPC.txt
echo " ------- " >>  info-$NOMPC.txt
lspci -nn  >>  info-$NOMPC.txt
echo " ------- " >>  info-$NOMPC.txt
lsusb -vv  >>  info-$NOMPC.txt
echo " ------- " >>  info-$NOMPC.txt
cat /proc/partitions  >>  info-$NOMPC.txt
echo " ------- " >>  info-$NOMPC.txt
cat  /etc/fstab >> info-$NOMPC.txt
echo " ------- " >>  info-$NOMPC.txt
ip addr  >>  info-$NOMPC.txt
echo " ------- " >>  info-$NOMPC.txt
dmesg  >>  info-$NOMPC.txt
echo " ------- " >>  info-$NOMPC.txt

