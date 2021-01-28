The program "usbcam.sh" is currently able to stream two cameras at once

In order to add more you will need to find the names of them using the command "v4l2-ctl --list-devices" with all of the cameras plugged in and find
the path for each camera (i.e. /dev/video0)

Once you have found the path for each camera, copy the line of code for each new camera but change the path and the port it streams to

example below:

mjpg_streamer -i "input_uvc.so -d /dev/video0 -f 10 -n" -o "output_http.so -w /usr/src/mjpg-streamer-experimental/www -p 8080" & (this is the first cam)

mjpg_streamer -i "input_uvc.so -d /dev/video2 -f 10 -n" -o "output_http.so -w /usr/src/mjpg-streamer-experimental/www -p 8090" & (this is the second cam)

mjpg_streamer -i "input_uvc.so -d /dev/video# -f 10 -n" -o "output_http.so -w /usr/src/mjpg-streamer-experimental/www -p 9000" & (this would be the third)

mjpg_streamer -i "input_uvc.so -d /dev/video## -f 10 -n" -o "output_http.so -w /usr/src/mjpg-streamer-experimental/www -p 9010" & (this would be the fourth)
