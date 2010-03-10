#!/bin/ksh
#Gets memory totals for web monitoring reports
FreeMem=`grep MemFree /proc/meminfo`
TotalMem=`grep MemTotal /proc/meminfo`
FreeMem=${FreeMem#*\ }
TotalMem=${TotalMem#*\ }
FreeMem=${FreeMem%*\ kB}
TotalMem=${TotalMem%*\ kB}
Uptime=`/usr/bin/uptime`
Uptime=${Uptime%%,*}
Uname=`/bin/uname -n`
Uname=${Uname%%.*}
#(( FreeMem = FreeMem * 1000 ))
#(( TotalMem = TotalMem * 1000 ))
echo ${FreeMem}
echo ${TotalMem}
#echo ${Uptime}
#echo ${Uname}
