# Working with ROS using Docker

Utilizing the official [Docker](https://hub.docker.com/_/ros) images

## Goal

The main goal is to be able to utilize ROS1 in Windows with Docker Toolbox

### Dependencies

[Docker Toolbox](https://docs.docker.com/toolbox/toolbox_install_windows/)

[Ubuntu Windows Subsystem for Linux](https://docs.microsoft.com/en-us/windows/wsl/install-win10)? (You may not need this but the commands ran here will be Ubuntu base)

### Using GUI with ROS Docker Containers:
[GUI SUPPORT](http://wiki.ros.org/docker/Tutorials/GUI)

### How to run

Build image using the Docker Toolbox command line: 
1. `cd /PATH/TO/ros`
2. `docker build -t ros-image .`

Start a container with the image you just built in interactive mode:
1. give permissions: `xhost + local:root`
2. start container: `docker run -it --env="DISPLAY" --privileged --volume="/tmp/.X11-unix:/tmp/.X11-unix:rw" --name=ros_container ros-image`
3. start roscore in the background: `roscore &`
4. start turtlesim node: `rosrun turtlesim turtlesim_node`
5. take away permissions when you're done: `xhost - local:root`