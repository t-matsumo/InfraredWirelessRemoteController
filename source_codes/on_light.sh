#!/bin/sh

irsend SEND_ONCE my_light on

# Light become the darkest once.
for i in `seq 1 4`
do
	irsend SEND_ONCE my_light down
done

# Light become light gradually. 
readonly SLEEP_TIME="5m"
for i in `seq 1 4`
do	
	sleep $SLEEP_TIME
	irsend SEND_ONCE my_light up
done
