FROM ubuntu:18.04

RUN \
	dpkg --add-architecture i386 && \
	apt-get update && \
	apt-get install -y \
		libqt5gui5 \
		libcanberra-gtk-module

## download SimplicityStudio: https://www.silabs.com/documents/login/software/SimplicityStudio-v4.tgz
ADD SimplicityStudio-v4.tgz /opt
RUN \
	mkdir -p /etc/udev/rules.d && \
	sed -i "s/sudo apt-get install/apt-get install -y/" "/opt/SimplicityStudio_v4/setup.sh" && \
	/opt/SimplicityStudio_v4/setup.sh

WORKDIR /root/workspace
