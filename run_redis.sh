
sudo mkdir -p /storage/docker/redis/data

sudo docker run \
  -d --net=host \
  -v /storage/docker/redis/data:/redis-data \
  -p 6379:6379 \
  kailu/rtbkit-redis
