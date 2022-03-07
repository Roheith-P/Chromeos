#!/bin/bash
sudo apt update && sudo apt upgrade
sudo apt-get install pv
sudo apt install figlet
sudo figlet -c "Made By Roheith"
sudo apt install curl
mkdir chrome_os
cd chrome_os
curl https://github.com/sebanc/brunch/releases/download/r97-stable-20220121/brunch_r97_stable_20220121.tar.gz -O brunch.tar.gz
tar -tvf brunch.tar.gz
rm brunch.tar.gz
curl https://dl.google.com/dl/edgedl/chromeos/recovery/chromeos_14388.61.0_rammus_recovery_stable-channel_mp-v2.bin.zip -O rammus_recovery.bin.zip
gunzip -S .zip rammus_recovery.bin.zip
rm rammus_recovery.bin.zip
sudo bash chromeos-install.sh -src rammus_recovery.bin -dst /dev/sda
sudo figlet -c "Restart The System"