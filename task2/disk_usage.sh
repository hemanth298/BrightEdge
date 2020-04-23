#!/bin/bash

echo -n "Please enter disk usage in GB: "
read disk_usage
echo "You entered: $disk_usage"


output=$(df -h | grep ^/dev | awk '{printf "%s:%s\n", $1, $2}')

for item in $output
do
     size=$(echo $item | cut -d':' -f2)
     size=${size::-1}
     if [[ $disk_usage -ge $size ]];then
       echo "Given size $disk_usage is greater than the disk size" | mail -s "ALERT!!-Disk usage exceeded" hemanth298@gmail.com
     fi
done
