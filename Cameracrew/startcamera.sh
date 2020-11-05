#!/bin/bash
mjpg_streamer -o "output_http.so -w /usr/src/mjpg-streamer-experimental/www" -i "input_raspicam.so -vf" &
