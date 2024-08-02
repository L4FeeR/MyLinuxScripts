#!/usr/bin/bash
clear
echo -e "\n\n\n\n\n\n\t\t Linux Kernel Builder by L4FeeR"
sleep 2
clear
echo -e "\n\ncopying current .config from running system...   [Press Enter]\n"
read
cp -v /boot/config-$(uname -r) .config

echo -e "\n\nEnabling neccessary kernel modules only <currently in use>...   [PRESS ENTER]\n"
read
make localmodconfig
clear
echo -e "\n\n\n\n\t\tWait for 3 sec to complete this process..."
sleep 3
clear
echo "\nGiving proper trusted keys...   [PRESS ENTER]\n"

scripts/config --disable SYSTEM_TRUSTED_KEYS
scripts/config --disable SYSTEM_REVOCATION_KEYS
scripts/config --set-str CONFIG_SYSTEM_TRUSTED_KEYS ""
scripts/config --set-str CONFIG_SYSTEM_REVOCATION_KEYS ""

echo -e "\nRunning Menuconfig for additional configuration...   [PRESS ENTER]\n"
read
make menuconfig

echo -e "\nBuilding kernel with selected configurations...    [PRESS ENTER]\n"
read
fakeroot make -j8

if [ $? -eq 1 ];then
read -p "[+]Install Build Kernel [y/n]?" ch
if [ $ch == "y" ];then
	echo -e "\nInstalling Kernel Modules...\n"
	sudo make modules_install
	echo -e "\nInstalling kernel...\n"
	sudo make install
	echo  -e "Done."
	echo "\nPRESS ENTER to reboot!\n"
	read
	sudo reboot
