# Download source #
NOTE: This assumes you already have ROS kinetic installed.

	mkdir ~/darknet && cd ~/darknet && git init

	git remote add gh git@github.com:westpoint-robotics/darknet-yolov3.git && git pull gh master

# CUDA #
If you want to run darknet-yolov3 without CUDA, skip this section.  You will need to change the makefile to `GPU=0` to suppress checking for cuda.

To install CUDA follow the instructions here: [install_cuda.sh](https://github.com/westpoint-robotics/darknet-yolov3/blob/master/scripts/install_cuda.sh), also in the scripts folder.  (NOTE: this is a guide file in shell script format, it is not meant to be run as a single terminal command.)

There are five make options in ~/darknet/Makefile :

	GPU=1
	CUDNN=0
	OPENCV=1
	OPENMP=0
	DEBUG=0  

Setting GPU=0 and OPENCV=0 turns off the build to ignore opencv and cuda/gpu processing.  This installation assumes ROS kinetic is already installed, which has opencv bundled.  To find the ROS ported version of dakrnet, see [this repo](https://github.com/westpoint-robotics/darknet-yolov3-ros)

	#ARCH= -gencode arch=compute_30,code=sm_30 \ 
	#-gencode arch=compute_35,code=sm_35 \  
	#-gencode arch=compute_50,code=[sm_50,compute_50] \
	#-gencode arch=compute_52,code=[sm_52,compute_52]
	#-gencode arch=compute_20,code=[sm_20,sm_21] \ This one is deprecated?

	# This is what I use for my Quadro M2000 video card
	ARCH= -gencode arch=compute_50,code=sm_50


If everthing went well, you should be able to generate a report using `nvidia-smi` from the command line.  Mine looks like this:

	+-----------------------------------------------------------------------------+  
	| NVIDIA-SMI 410.79       Driver Version: 410.79       CUDA Version: 10.0     |
	|-------------------------------+----------------------+----------------------+
	| GPU  Name        Persistence-M| Bus-Id        Disp.A | Volatile Uncorr. ECC |
	| Fan  Temp  Perf  Pwr:Usage/Cap|         Memory-Usage | GPU-Util  Compute M. |
	|===============================+======================+======================|
	|   0  Quadro M2000        Off  | 00000000:01:00.0  On |                  N/A |
	| 55%   42C    P0    24W /  75W |    392MiB /  4040MiB |      1%      Default |
	+-------------------------------+----------------------+----------------------+
	                                                                               
	+-----------------------------------------------------------------------------+
	| Processes:                                                       GPU Memory |
	|  GPU       PID   Type   Process name                             Usage      |
	|=============================================================================|
	|    0      1157      G   /usr/lib/xorg/Xorg                           166MiB |
	|    0      1561      G   /usr/bin/gnome-shell                         219MiB |
	|    0      2003      G   /usr/lib/firefox/firefox                       1MiB |
	+-----------------------------------------------------------------------------+



# Install #

`cd ~/darknet && make`

For help with the installation, see the darknet install page: [Darknet install page](https://pjreddie.com/darknet/install/).


# Usage:
./darknet <function>

Examples can be found in the scripts folder, following the [test_darknet.sh](https://github.com/westpoint-robotics/darknet-yolov3/blob/master/scripts/test_darknet.sh) file.



# Darknet #
Darknet is an open source neural network framework written in C and CUDA. It is fast, easy to install, and supports CPU and GPU computation.

For more information see the [Darknet project website](http://pjreddie.com/darknet).

For questions or issues please use the [Google Group](https://groups.google.com/forum/#!forum/darknet).

![Darknet Logo](http://pjreddie.com/media/files/darknet-black-small.png)

