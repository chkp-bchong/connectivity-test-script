#!/bin/bash
##script for monitoring test

##modify the variables here
testhost=192.168.168.187
port=443
logdir=/var/log


timeout 5s telnet $testhost $port < /dev/null

if [[ $? -eq 124 ]]
then
  echo "`date +"%Y-%m-%d %T"` Connection Timeout" >> $logdir/vpnlog_$port.log
else
  echo "`date +"%Y-%m-%d %T"` Connection Successful" >> $logdir/vpnlog_$port.log
fi
