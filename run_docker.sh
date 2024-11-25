#!/bin/bash

docker run -it -v ~/stereo_vio/data:/data:rw \
        -v ./:/catkin_ws/src:rw \
        -v /tmp/.X11-unix:/tmp/.X11-unix:rw \
        -e "DISPLAY=$DISPLAY" \
        -e "QT_X11_NO_MINSHM=1" \
        --name direct_stereo_slam direct_stereo_slam