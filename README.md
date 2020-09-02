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
2. start container: `docker run -it --env="DISPLAY" --privileged --volume="/tmp/.X11-unix:/tmp/.X11-unix:rw" --volume="$(pwd):/ros" --name=ros_container ros-image`
3. start roscore in the background: `roscore &`
4. start turtlesim node: `rosrun turtlesim turtlesim_node` (you probably have to run this twice as the first time the GUI is blakc screen)
5. take away permissions when you're done: `xhost - local:root`

Using the scripts:
* Replace step 4 with (change to the ros folder, give the script permission, and finally run it) Probably need to run it twice due to same GUI issue as bove: `cd ros && chmod +x turtlesim_with_keyboard.sh && ./turtlesim_with_keyboard_control.sh`

Publish topics from command line example:
`rostopic pub -r 10 /turtle1/cmd_vel geometry_msgs/Twist '{linear:  {x: 0.1, y: 0.0, z: 0.0}, angular: {x: 0.0,y: 0.0,z: 0.0}}'
`