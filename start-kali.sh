#!/bin/bash

docker run -it --rm --mount src=kali-root,dst=/root --mount src=kali-postgres,dst=/var/lib/postgresql --net="host" --privileged --name kali kali-ready /bin/bash 
