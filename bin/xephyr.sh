#!/bin/sh


Xephyr -resizeable -screen 1650x900 :1 &
sleep 1
DISPLAY=:1 i3 &
