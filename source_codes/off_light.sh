#!/bin/sh

# down in 4 times
readonly SLEEP_TIME="5m"
for i in `seq 1 4`
do
	irsend SEND_ONCE my_light down
	sleep $SLEEP_TIME
done

irsend SEND_ONCE my_light out
