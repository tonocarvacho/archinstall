FROM archlinux
RUN pacman -Syu --noconfirm git ansible vifm sudo 
COPY . .
#CMD ["sh", "-c", "ansible-playbook $TAGS local.yml"]
