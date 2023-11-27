# list all containers
docker ps -a 

docker system prune --all --force

systemctl start docker

docker build -t archinstall .

docker run --rm -ti archinstall bash

# run ansible
sudo ansible-playbook local.yml
sudo ansible-playbook -t "core, fonts" local.yml
