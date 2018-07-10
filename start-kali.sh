#!/bin/bash

docker run -it --rm \
    --mount src=kali-root,dst=/root \
    --mount src=kali-postgres,dst=/var/lib/postgresql \
    --volume /tmp/.X11-unix:/tmp/.X11-unix \
    -e DISPLAY=$DISPLAY \
    --net="host" --privileged \
    --name kali kali-ready /bin/bash 
