#!/bin/bash

CPU=$(top -bn1 | grep "Cpu(s)" | awk '{print 100-$8}')
MEM=$(free | awk '/Mem/{printf("%.0f"), $3/$2 * 100}')

echo "CPU Usage: $CPU%"
echo "Memory Usage: $MEM%"