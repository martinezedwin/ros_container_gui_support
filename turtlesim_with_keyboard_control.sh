#!/bin/bash

set -e 

# Start roscore in the background
roscore &

# Launch turtlesim
rosrun turtlesim turtlesim_node &

# Launch being able to use keyboard for commands
rosrun turtlesim turtle_teleop_key
