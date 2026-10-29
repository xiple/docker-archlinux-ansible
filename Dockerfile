FROM docker.io/library/archlinux:latest

RUN pacman-key --init \
    && pacman-key --populate archlinux \
    && pacman -Syu \
    && pacman -S python ansible --noconfirm \
    && pacman -Sc --noconfirm

# Run the command
CMD ["/bin/bash"]
