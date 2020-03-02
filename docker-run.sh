#!/bin/sh

docker run -ti --rm \
	--env DISPLAY \
	--volume "/tmp/.X11-unix:/tmp/.X11-unix:rw" \
	--volume "${XAUTHORITY}:/root/.Xauthority:ro" \
	--volume "/dev/bus/usb:/dev/bus/usb" \
	--name "simplicity-studio" \
	--network "host" \
	--privileged \
	simplicity-studio \
	/opt/SimplicityStudio_v4/run_studio.sh
