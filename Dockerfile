# Utilizing ROS Neotic (Ubuntu 20.04)
FROM ros:noetic-robot

# Update
RUN apt-get update

# Install turtlesim
RUN sudo apt-get install -y ros-$(rosversion -d)-turtlesim; sudo apt-get install -y ros-$(rosversion -d)-turtlesim --fix-missing

# Install others
RUN apt-get install -y vim
