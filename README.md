# Download source #
`mkdir ~/darknet && cd ~/darknet && git init`

`git remote add gh git@github.com:westpoint-robotics/darknet-yolov3.git && git pull gh master `

# CUDA #
If you want to run darknet-yolov3 without CUDA, skip this section.  You will need to change the makefile to `GPU=0` to suppress checking for cuda.

To install CUDA follow the instructions here: [install_cuda.sh](https://github.com/westpoint-robotics/darknet-yolov3/blob/master/scripts/install_cuda.sh), also in the scripts folder.  (NOTE: this is a guide file in shell script format, it is not meant to be run as a single terminal command.)

There are five make options in ~/darknet/Makefile :

`GPU=1`  
`CUDNN=0`  
`OPENCV=1`  
`OPENMP=0`  
`DEBUG=0`  

Setting GPU=0 and OPENCV=0 turns off the build to ignore opencv and cuda/gpu processing.  This installationg assumes ROS kinetic is already installed, which has opencv bundled.

`#ARCH= -gencode arch=compute_30,code=sm_30 \ `  
`#-gencode arch=compute_35,code=sm_35 \  `  
`#-gencode arch=compute_50,code=[sm_50,compute_50] \`  
`#-gencode arch=compute_52,code=[sm_52,compute_52]`  
`#-gencode arch=compute_20,code=[sm_20,sm_21] \ This one is deprecated?`  

`# This is what I use, uncomment if you know your arch and want to specify`  
`ARCH= -gencode arch=compute_50,code=sm_50`  


# USMA Install #

`cd ~/darknet && make`

For help with the installation, see the darknet install page: [Darknet install page](https://pjreddie.com/darknet/install/).


# Usage:
./darknet <function>

Examples can be foun in the scripts folder, following the [test_darknet.sh](https://github.com/westpoint-robotics/darknet-yolov3/blob/master/scripts/test_darknet.sh) file.



# Darknet #
Darknet is an open source neural network framework written in C and CUDA. It is fast, easy to install, and supports CPU and GPU computation.

For more information see the [Darknet project website](http://pjreddie.com/darknet).

For questions or issues please use the [Google Group](https://groups.google.com/forum/#!forum/darknet).

![Darknet Logo](http://pjreddie.com/media/files/darknet-black-small.png)

