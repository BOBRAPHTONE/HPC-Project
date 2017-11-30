#!/bin/bash
# installing all the requirements and setting the development environment
# i) MPI 
# ii) mayavi
#https://redmine.hpc.rug.nl/redmine/projects/peregrine/wiki/Submitting_a_single_job_with_Python_(multiple_nodes)
sudo apt-get install libcr-dev mpich2 mpich2-doc
wget https://pypi.python.org/packages/6c/c7/3f49fe4caee7534838cbf03d8494f1f5de0d993606b02c5f90e37d69229c/mayavi-4.5.0.tar.gz#md5=4bc58e113f83e1dad38dc869fe84729c


#!/bin/bash

# MAYAVI SETUP
# mayavi is a python library for scientific visualisations, that can handle
# visualisation of Lidar Data. But, it can also be used to project Lidar data
# to 2D images.
# 
# The set of commands I used to get mayavi set up on my computer so far. 
# NOTE: I still do not know if it is set up properly, so this set of steps 
#       might be incomplete. 
# NOTE: python-vtk is a prerequisite of mayavi, but it only seems to be 
#       available for python 2.7
# NOTE: This setup assumes that a virtualenv called `tfcv` has been used to 
#       install the python libraries. You should modify the 
#       VIRTUAL_ENV_NAME, and VIRTUAL_ENV_ROOT to where you have your desired 
#       virtualenv located, or, remove any lines that mentions virtualenv 
#       if you are not using a virutalenv.

# install virtual env and create  a virtual environment called my_new_app

sudo apt-get update
sudo apt install virtualenv
sudo apt-get install python-pip  
sudo pip install numpy scipy

virtualenv -p python3 my_new_app
source my_new_app/bin/activate

#sudo apt-get update
#sudo apt-get install mayavi2
PYTHON_VERSION="2.7"                   # 
VIRTUAL_ENV_NAME="my_new_app"                # Name of your virtualenv
VIRTUAL_ENV_ROOT="${HOME}/virtualenvs" # Where your virtual envs are stored

# REMOVE THE FOLLOWING 2 LINES IF YOU ARE NOT USING A VIRTUALENV
echo "ENTERING VIRTUALENV"
. ${VIRTUAL_ENV_ROOT}/${VIRTUAL_ENV_NAME}/bin/activate


echo "================================================"
echo "INSTALL LIBRARIES FOR PROCESSING POINT CLOUD DATA"
echo "================================================"

echo "INSTALLING VTK" # Prerequisite for mayavi
sudo apt-get install -y python-vtk

# REMOVE THE FOLLOWING 3 LINES IF YOU ARE NOT USING A VIRTUALENV
# CREATE LINK TO THE VTK FILES FROM THE VIRTUALENV
cd ${VIRTUAL_ENV_ROOT}/${VIRTUAL_ENV_NAME}/lib/python2.7/site-packages/
ln -s /usr/lib/pymodules/python2.7/vtk vtk


echo "INSTALLING MAYAVI"
sudo -H pip install mayavi

echo "INSTALLING GUI BACKEND FOR MAYAVI"
#pip install mayavi[TraitsBackendQt]
sudo apt-get install build-essential git cmake libqt4-dev libphonon-dev python2.7-dev libxml2-dev libxslt1-dev qtmobility-dev libqtwebkit-dev
sudo -H pip install pyside