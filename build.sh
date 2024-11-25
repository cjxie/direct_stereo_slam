#!/bin/bash

unzip *.zip

# install Pangolin
cd Pangolin
mkdir build && cd build
cmake ..
make -j4
sudo make install # or set LD_LIBRARY_PATH locally
cd ..

# install DSO
cd dso
mkdir build && cd build
cmake ..
make -j4
cd ..

# install g2o
cd g2o
mkdir build && cd build
cmake -DBUILD_WITH_MARCH_NATIVE=ON .. # use the flag to avoid possible double-free error
make -j4
sudo make install # or set LD_LIBRARY_PATH locally
cd ..

echo "export DSO_PATH=./dso" >> ~/.bashrc