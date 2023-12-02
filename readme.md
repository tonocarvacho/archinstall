# list all containers
docker ps -a 

docker system prune --all --force

systemctl start docker

docker build -t archinstall .

docker run --rm -ti archinstall bash

# run ansible
sudo ansible-playbook local.yml
sudo ansible-playbook -t "core, yay, hyprland" local.yml

sudo ansible-playbook -t dotfiles --ask-vault-pass local.yml

sudo ansible-playbook -t "core, ssh, dotfiles, fonts" --ask-vault-pass local.yml


