import RPi.GPIO as gp
import os
import keyboard
import time
gp.setmode(gp.BOARD)
gp.setup([32,23,26],gp.OUT)
gp.output(32, gp.HIGH)
gp.output(23, gp.LOW)
gp.output(26, gp.LOW)
time.sleep(1)
os.system('/home/student/cameracontrol/startcamera.sh &')
