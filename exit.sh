#!/bin/bash
a=`pidof "/opt/AN/bin/python3.6"`
arr=(${a// / })
for var in ${arr[@]}
do
   echo $var
   kill -9 $var
done