#!/bin/bash          
#
# Script to delay the launch of a roslaunch file
# 
# Rob Roberts
# Feb 21, 2020
#

echo "This script is used to show the manipulator joint positions"
rostopic echo /open_manipulator/joint_states
sleep 20
