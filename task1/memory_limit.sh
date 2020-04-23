#!/bin/bash

echo -n "Please enter memory in MB's: "
read memory_limit
echo "You entered: $memory_limit"

limit=$(free -m | sed 1d | awk '/^Mem/{ printf "%s\n", $2 }')

if [ $memory_limit -gt $limit ]
	then
		echo "memory given $memory_limit is more than physical memory:$limit"
	else
		echo "memory given $memory_limit is less than pysical memory:$limit"
fi

