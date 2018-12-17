# Test opencv: # should stream images of an eagle
cd ~/darknet && ./darknet imtest data/eagle.jpg

# test dog detector:
cd ~/darknet && ./darknet detect cfg/yolov3.cfg weights/yolov3.weights data/dog.jpg

# test training with VOC data
## First download dataset
bash ~/darknet/scripts/download_VOCdata.sh

## Download Pretrained Convolutional Weights
cd ~/darknet/weights/ && wget https://pjreddie.com/media/files/darknet53.conv.74

cd ~/darknet && ./darknet detector train scripts/voc_test.data cfg/yolov3-voc.cfg weights/darknet53.conv.74

## to test the new weights using darknet_ros:
cp ~/darknet/backup/yolov3-voc_final.weights ~/ros/src/darknet_ros/darknet_ros/yolo_network_config/weights/

## Now test the training set using the test files in this folder:
cd ~/darknet && ./darknet detector train scripts/voc_test.data cfg/yolov3-voc.cfg weights/darknet53.conv.74
