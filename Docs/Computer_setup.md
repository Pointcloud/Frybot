# Below are the steps to install and configure all sofware required to get the frystation up and running

##########################################
############# Ubuntu Software ############
##########################################

    1) Download the Ubuntu 18.04 image for Raspberry PI 4
    2) write to a SD card with balenaEtcher

##########################################
############# ROS Software ###############
##########################################

    1) Install ROS Melodic from Robotis script - $ wget https://raw.githubusercontent.com/ROBOTIS-GIT/robotis_tools/master/install_ros_melodic.sh && chmod 755 ./install_ros_melodic.sh && bash ./install_ros_melodic.sh
    2) Install Additional ROS Melodic Packages -  sudo apt-get install ros-melodic-ros-controllers ros-melodic-gazebo* ros-melodic-moveit* ros-melodic-industrial-core

##########################################
############# The Manipulator ############
##########################################

    1) Download the Manipulator package and dependencies

        $ cd ~/catkin_ws/src/
        $ git clone https://github.com/ROBOTIS-GIT/DynamixelSDK.git
        $ git clone https://github.com/ROBOTIS-GIT/dynamixel-workbench.git
        $ git clone https://github.com/ROBOTIS-GIT/dynamixel-workbench-msgs.git
        $ git clone https://github.com/ROBOTIS-GIT/open_manipulator_p.git
        $ git clone https://github.com/ROBOTIS-GIT/open_manipulator_msgs.git
        $ git clone https://github.com/ROBOTIS-GIT/open_manipulator_p_simulations.git
        $ git clone https://github.com/ROBOTIS-GIT/robotis_manipulator.git
        $ cd ~/catkin_ws && catkin_make

    2) Build

        $ cd ~/catkin_ws && catkin_make

    3) Configure Permissions

        register USER_ID to dialout group in order to gain access to /dev/ttyUSB0
        $ sudo usermod -aG dialout USER_ID

##########################################
############### The Gripper ##############
##########################################

    1) Download the Additional Software

        $ cd ~/catkin_ws/src
        $ git clone https://github.com/ROBOTIS-GIT/ROBOTIS-Framework
        $ git clone https://github.com/ROBOTIS-GIT/ROBOTIS-Framework-msgs
        $ git clone https://github.com/ROBOTIS-GIT/RH-P12-RN

    2) Build

        $ cd ~/catkin_ws
        $ catkin_make

    3) Configure Permissions

        register USER_ID to dialout group in order to gain access to /dev/ttyUSB0
        $ sudo usermod -aG dialout USER_ID

##########################################
############### Other ##############
##########################################

Other - servosix python directory may be required for the servo controller
