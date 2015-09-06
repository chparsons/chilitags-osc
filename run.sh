#!/bin/bash
#1080p  = 1920 x 1080
#720p   = 1280 x 720
#xga    = 1024 x 768
#vga    = 640  x 480
calibration="intrinsics.yml"
device=0
width=1024
height=768
ip="127.0.0.1"
port=7000
fps=30
detection_period=10
./build/app/chilitags_osc -d $device -i $calibration -w $width -h $height -a $ip -p $port -f $fps -g $detection_period
