Below are the steps to install and configure all sofware required to get the frystation up and running


##########################################
############# Ubuntu Software ############
##########################################

    1) Download the Ubuntu image for Raspberry PI -https://downloads.ubiquityrobotics.com/pi.html

##########################################
############# ROS Software ###############
##########################################


    1) (optional) If you did not download an image with ROS pre-installed, follow the instructions below:
    
        sudo apt-get update
        $ sudo apt-get upgrade
        $ wget https://raw.githubusercontent.com/ROBOTIS-GIT/robotis_tools/master/install_ros_kinetic.sh && chmod 755 ./install_ros_kinetic.sh && bash ./install_ros_kinetic.sh


##########################################
############# The Manipulator ############
##########################################

    1) Download the Manipulator package and dependencies

        $ sudo apt-get install ros-kinetic-gazebo*
        $ cd ~/catkin_ws/src/
        $ git clone https://github.com/ROBOTIS-GIT/DynamixelSDK.git
        $ git clone https://github.com/ROBOTIS-GIT/ROBOTIS-Framework.git
        $ git clone https://github.com/ROBOTIS-GIT/ROBOTIS-Framework-msgs.git
        $ git clone https://github.com/ROBOTIS-GIT/ROBOTIS-MANIPULATOR-H.git
        $ git clone https://github.com/ROBOTIS-GIT/ROBOTIS-Math.git

    2) Build

        $ cd ~/catkin_ws && catkin_make

    3) Configure Permissions

        register USER_ID to dialout group in order to gain access to /dev/ttyUSB0
        $ sudo usermod -aG dialout USER_ID


##########################################
############### The Gripper ##############
##########################################

    1) Download the Software

        $ cd ~/catkin_ws/src
        $ git clone https://github.com/ROBOTIS-GIT/DynamixelSDK
        $ git clone https://github.com/ROBOTIS-GIT/ROBOTIS-Framework
        $ git clone https://github.com/ROBOTIS-GIT/ROBOTIS-Framework-msgs
        $ git clone https://github.com/ROBOTIS-GIT/RH-P12-RN

    2) Build

        $ cd ~/catkin_ws
        $ catkin_make

    3) Configure Permissions

        register USER_ID to dialout group in order to gain access to /dev/ttyUSB0
        $ sudo usermod -aG dialout USER_ID