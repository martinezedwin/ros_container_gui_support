# Utilizing ROS Neotic (Ubuntu 20.04)
FROM ros:noetic-robot

# Update
RUN apt update

# Install turtlesim
RUN apt-get install -y ros-$(rosversion -d)-turtlesim
