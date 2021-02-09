# cameracontrol
control scripts for a raspicam on a kitbot

# Using cameracontrol
1. Clone the repository
2. Make the camera scripts executable:

```
chmod +x cameracontrol/*.sh
```

3. Run the startcamera script:

```
cameracontrol/startcamera.sh
```

4. To stop the camera:

```
cameracontrol/stopcamera.sh
```

# Requirements:
This is *unnecessary* on standard Robo SD cards created for BSM Engineering students.
1. Install mjpg-streamer following directions here: https://github.com/jacksonliam/mjpg-streamer
2. Create the proper environment (as Pi):

```
sudo cp -r mjpg-streamer/mjpg-streamer-experimental /usr/src/mjpg-streamer-experimental
sudo echo "export LD_LIBRARY_PATH=/usr/src/mjpg-streamer-experimental/" >> /etc/environment
sudo reboot
```
