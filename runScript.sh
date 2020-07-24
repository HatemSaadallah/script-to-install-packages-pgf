#!/bin/bash
# My first script

echo "PalTel Group Foundation Shell Script"
echo "Installing the wifi driver"
sleep 2

echo "......."
sleep 2

sudo dpkg --install packages/rtl8821ce-dkms_5.2.5.2.1.30816.20190425-0ubuntu1_all.deb

if [ $? -eq 0 ]; then
    echo "Successfully Install the wifi driver"
else
    echo "Failed Installing the wifi driver"
fi

sleep 2
echo "....."
sleep 1





echo "Fixing python not found problem"
sleep 2

echo `pwd`

cp -vT `pwd`/.bashrc  ~/.bashrc

echo "Done..."


sleep 1

echo "Installing VSCode..."

sudo dpkg --install packages/code_1.47.2-1594837870_amd64.deb

if [ $? -eq 0 ]; then
    echo "...."	
    echo "Successfully Installed VSCode"
else
    echo "...."	
    echo "Failed Installing VSCode "
fi

sleep 1

echo '....'
sleep 1
echo 'Installing Zoom'
sleep 1
sudo dpkg --install packages/zoom_amd64.deb

if [ $? -eq 0 ]; then
    echo "...."	
    echo "Successfully Installed Zoom"
else
    echo "...."	
    echo "Failed Installing Zoom"
fi

echo '....'
sleep 1
echo 'Installing Git'

sudo dpkg --install packages/git-all_2.28.0_rc2-1_all.deb

if [ $? -eq 0 ]; then
    echo "...."	
    echo "Successfully Installed Git"
else
    echo "...."	
    echo "Failed Installing Git"
fi

echo '....'
sleep 1
echo 'Installing Python Tkinter'

sudo dpkg --install packages/python3-tk_3.5.1-1_arm64.deb

if [ $? -eq 0 ]; then
    echo "...."	
    echo "Successfully Installed Tkinter"
else
    echo "...."	
    echo "Failed Installing Tkinter"
fi

echo "...."
sleep 1
echo "Done Installing All the requirments"
sleep 1
echo "The computer with reboot in 5 seconds"
sleep 5
reboot
