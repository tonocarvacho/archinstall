# list all containers
docker ps -a 


systemctl start docker

docker build -t archinstall .

docker run --rm -ti archinstall bash

