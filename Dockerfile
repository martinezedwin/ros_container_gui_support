# Utilizing ROS Neotic (Ubuntu 20.04)
FROM ros:noetic-robot

# Update
RUN apt-get update
RUN apt update

# Install python 3.7
RUN apt install software-properties-common
RUN add-apt-repository ppa:deadsnakes/ppa
RUN apt install python3.7

# Install turtlesim
RUN sudo apt-get install -y ros-$(rosversion -d)-turtlesim; sudo apt-get install -y ros-$(rosversion -d)-turtlesim --fix-missing

# Install others
RUN apt-get install -y vim
