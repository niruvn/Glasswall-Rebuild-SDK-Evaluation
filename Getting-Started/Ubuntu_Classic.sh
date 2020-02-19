#!/bin/bash

## check for root permissions ##
if [ $USER = 'root' ]
then

cd /

## install prerequisites ##
apt-get install -y libc6
apt-get install -y libfreetype6
apt-get install -y fontconfig

## install git ##
apt-get install -y git

## create git working directory ##
mkdir -p /tmp/glasswall/
cd /tmp/glasswall

## clone into working directory ##
git clone https://github.com/filetrust/SDK-Evaluation-Version-1.x.git

## rename folder ##
cp -r SDK-Evaluation-Version-1.x/ /glasswall

## set permissions ##
chmod -R 777 /glasswall

## remove files from tmp ##
rm -r /tmp/glasswall

## copy SDK into folders ##
ln -s /glasswall/Lib/libglasswall.classic.so /usr/lib/libglasswall.classic.so && \
ldconfig /usr/lib

## create desktop folders ##
mkdir -p /home/glasswall/Desktop/
cd /home/glasswall/Desktop
mkdir input/
mkdir output/

## add $path variables ##
export PATH=$PATH:/glasswall
export PATH=$PATH:/glasswall/Lib
export PATH=$PATH:/usr/lib

## add GlasswallProtect script and configs to Desktop ##
cd /glasswall/CLI
cp Ubuntu-Protect.sh /home/glasswall/Desktop/GlasswallProtect.sh
cd Configs
cp config.ini /home/glasswall/Desktop/config.ini
cp config.xml /home/glasswall/Desktop/config.xml

## rm -r /home/glasswall/Desktop/product-glasswall-kiosk

chmod -R 777 /glasswall

##
clear
##
echo "The Glasswall Engine is ready"

exit 1

##
else
	echo "##################"
        echo "Please run as root"
	echo "##################"
        exit 100
fi
