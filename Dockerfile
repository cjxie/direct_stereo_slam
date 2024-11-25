FROM ros:noetic-ros-base

SHELL [ "/bin/bash", "-c"] 

RUN apt update -y && apt upgrade -y && \
    apt install -y libgl1-mesa-dev libglew-dev cmake \
    libegl1-mesa-dev libwayland-dev libxkbcommon-dev wayland-protocols
    
RUN apt install -y libsuitesparse-dev libeigen3-dev libboost-all-dev libopencv-dev && \
    apt install -y git vim tmux unzip

RUN mkdir -p /catkin_ws/src

RUN echo "source /opt/ros/noetic/setup.bash" >> ~/.bashrc
RUN touch ~/.tmux.conf && \
    echo "setw -g mouse on" >> ~/.tmux.conf
ENTRYPOINT [ "/bin/bash" ]