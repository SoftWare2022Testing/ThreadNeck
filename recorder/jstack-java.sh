#!/bin/bash

echo '1. Get threads information'
pid=$(sudo jps | grep $1 | awk '{print $1}')
echo "pid:" ${pid}

# 查找Java程序的进程ID
pid=$(pgrep -f $javaProgramName)

# 每秒执行一次jstack
while true; do
    jstack $pid >> "jstackdump.txt"
    sleep 0.001
done
