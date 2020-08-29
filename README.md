# Working with ROS using Docker

Utilizing the official [Docker](https://hub.docker.com/_/ros) images

## Goal

The main goal is to be able to utilize ROS1 in Windows with Docker Toolbox

### Dependencies

[Docker Toolbox](https://docs.docker.com/toolbox/toolbox_install_windows/)

[Ubuntu Windows Subsystem for Linux](https://docs.microsoft.com/en-us/windows/wsl/install-win10)? (You may not need this but the commands ran here will be Ubuntu base)

### How to run

Build image using the Docker Toolbox command line: 
1. `cd /PATH/TO/ros`
2. `docker build -t ros-image .`

Start a container with the image you just built in interactive mode:
1. `docker run -it --env="DISPLAY" --privileged --volume="/tmp/.X11-unix:/tmp/.X11-unix:rw" ros-image ros-image`
2. 