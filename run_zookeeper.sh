
sudo mkdir -p /storage/docker/zookeeper/data

sudo docker run \
     -d \
     -v /storage/docker/zookeeper/data:/zookeeper-data \
     -p 2181:2181 \
     kailu/zookeeper
#     --net=host \
