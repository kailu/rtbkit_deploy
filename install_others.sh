
#git clone https://github.com/kailu/graphite-docker.git
sudo docker build -t kailu/graphite https://github.com/kailu/graphite-docker.git

sudo mkdir -vp /storage/docker/graphite
sudo touch /storage/docker/graphite/index

# sudo docker run \
#   -d --net=host \
#   -v /storage/docker/graphite/data:/opt/graphite/storage/whisper \
#   -v /storage/docker/graphite/index:/opt/graphite/index \
#   -v /storage/docker/graphite/log:/var/log \
#   -p 8088:8088 \
#   -p 8080:8080 \
#   -p 2003:2003 \
#   -p 8125:8125/udp \
#   kailu/graphite

#git clone https://github.com/kailu/rtbkit-redis-docker.git
sudo docker build -t kailu/rtbkit-redis https://github.com/kailu/rtbkit-redis-docker.git

# sudo docker run \
#   -d --net=host \
#   -v /storage/docker/redis/data:/redis-data \
#   -p 6379:6379 \
#   kailu/rtbkit-redis
