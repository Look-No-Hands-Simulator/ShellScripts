#!/bin/bash
set -e

echo "Please type 'source sourceall.sh' in the terminal to run this file properly."
echo "Sourcing ROS 2 setup files"
source /opt/ros/foxy/setup.bash || { echo "Failed to source ROS 2 setup"; exit 1; }

echo "Sourcing ads-ws setup files"
cd ads-ws
source ./install/setup.bash || { echo "Failed to source ads-ws setup"; exit 1; }
cd ..

echo "Sourcing unityros-ws setup files"
cd unityros-ws
source ./install/setup.bash || { echo "Failed to source unityros-ws setup"; exit 1; }
cd ..

echo "All setup files sourced successfully"

