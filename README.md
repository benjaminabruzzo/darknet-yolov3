# USMA Install #
`mkdir ~/darknet && cd ~/darknet && git init`

`git remote add gh git@github.com:westpoint-robotics/darknet-yolov3.git && git pull gh master && make`

If you want to run darknet-yolov3 with cuda, follow the instructions here: [install_cuda.sh](https://github.com/westpoint-robotics/darknet-yolov3/blob/master/scripts/install_cuda.sh), also in the scripts folder.  (NOTE: this is a guide file in shell script format, it is not meant to be run as a single terminal command.)

For help with the installation, see the darknet install page: [Darknet install page](https://pjreddie.com/darknet/install/).


# Usage:
./darknet <function>

Examples can be foun in the scripts folder, following the [test_darknet.sh](https://github.com/westpoint-robotics/darknet-yolov3/blob/master/scripts/test_darknet.sh) file.



# Darknet #
Darknet is an open source neural network framework written in C and CUDA. It is fast, easy to install, and supports CPU and GPU computation.

For more information see the [Darknet project website](http://pjreddie.com/darknet).

For questions or issues please use the [Google Group](https://groups.google.com/forum/#!forum/darknet).

![Darknet Logo](http://pjreddie.com/media/files/darknet-black-small.png)

