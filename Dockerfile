FROM archlinux

RUN pacman -Syu --noconfirm git ansible vifm sudo 

RUN useradd -m -G wheel -s /bin/bash tono

RUN echo 'tono:9898' | chpasswd

# Allow members of the wheel group to execute any command with sudo
RUN echo '%wheel ALL=(ALL) NOPASSWD: ALL' >> /etc/sudoers

# Switch to the new user
USER tono

# Set the working directory to the new user's home directory
WORKDIR /home/tono
COPY . .
#CMD ["sh", "-c", "ansible-playbook $TAGS local.yml"]
