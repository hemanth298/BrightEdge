#!/bin/bash

memory_limit=$1

limit='free -m | sed 1d | awk '/^Mem/ {printf  "%s\n",   $2}''

mem_diff=0
if [[ $memory_limit -gt $limit ]]; then
  mem_diff=`expr $memory_limit - $limit`
  echo "Memory limit given $mem_diff greater than pysical memory"
else
  mem_diff=`expr $limit - $memory_limit`
  echo "Pysical memory is $mem_diff greater than given memory limit"
fi
