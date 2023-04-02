echo "started---------------"

# sudo docker rm -f $(sudo docker ps -aq)

sudo docker rmi $(sudo docker images -q)

git reset --hard

sudo docker-compose build

sudo docker-compose up -d

sudo docker images

sudo docker ps -a

echo "ended---------------"