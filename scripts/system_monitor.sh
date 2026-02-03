#!bin/bash

echo "======== System Resource Report======="

echo " "

echo "Date:$(date)"

echo " "

source /etc/os-release

echo -e "\nThe OS Version is: $PRETTY_NAME"

echo -e "\nTHe Kernal is: $(uname -r)"

echo ""

echo -e "\nCPU Load:"
uptime -p

echo -e "\nMemory Usage:"
free -h

echo -e "\nDisk Usage:"
df -h | grep -v tmpfs

echo " "

echo "The total RAM is: $(awk '/Mem:/{print $2}' <<< "$(free -h)")"
echo "Used RAM: $(awk '/Mem:/{print $3}' <<< "$(free -h)")"
echo "Free RAM: $(awk '/Mem:/{print $4}' <<< "$(free -h)")"

echo " "

echo "The top 3 Processes by CPU usage:
$(ps -eo %cpu,ppid,pid,comm --sort=-%cpu | head -n 5)"

echo " "
~
~
~
~
