#!/bin/bash
mjpg_streamer -i "input_uvc.so -d /dev/video0 -f 10 -n" -o "output_http.so -w /usr/src/mjpg-streamer-experimental/www -p 8080" &
mjpg_streamer -i "input_uvc.so -d /dev/video2 -f 10 -n" -o "output_http.so -w /usr/src/mjpg-streamer-experimental/www -p 8090" &
