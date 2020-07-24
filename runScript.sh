#!/bin/bash
# My first script

echo "PalTel Group Foundation Shell Script"
echo "Installing the wifi driver"
sleep 2

echo "......."
sleep 2

sudo dpkg --install rtl8821ce-dkms_5.2.5.2.1.30816.20190425-0ubuntu1_all.deb

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

sudo dpkg --install code_1.47.2-1594837870_amd64.deb

if [ $? -eq 0 ]; then
    echo "...."	
    echo "Successfully Installed VSCode"
else
    echo "...."	
    echo "Failed Installing VSCode "
fi

sleep 2

echo "Done Installing All the requirments"
sleep 1
echo "The computer with reboot in 5 seconds"

reboot
