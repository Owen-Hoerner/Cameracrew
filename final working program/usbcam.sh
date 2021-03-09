#!/bin/bash
mjpg_streamer -i "input_uvc.so -d /dev/video0 -f 5 -r 480x360 -n" -o "output_http.so -w /usr/src/mjpg-streamer-experimental/www -p 8080" &
mjpg_streamer -i "input_uvc.so -d /dev/video2 -f 5 -r 480x360 -n" -o "output_http.so -w /usr/src/mjpg-streamer-experimental/www -p 8090" &
mjpg_streamer -i "input_uvc.so -d /dev/video4 -f 5 -r 480x360 -n" -o "output_http.so -w /usr/src/mjpg-streamer-experimental/www -p 9000" &
mjpg_streamer -i "input_uvc.so -d /dev/video6 -f 5 -r 480x360 -n" -o "output_http.so -w /usr/src/mjpg-streamer-experimental/www -p 9010" &
