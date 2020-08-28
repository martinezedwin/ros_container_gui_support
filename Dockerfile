# Utilizing ROS Kinetic (Ubuntu 16.04)
FROM ros:kinetic-robot

# Update
RUN apt update

# Install turtlesim
RUN apt-get install -y ros-$(rosversion -d)-turtlesim
