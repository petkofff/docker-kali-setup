FROM kalilinux/kali-linux-docker

RUN apt-get update && apt-get -y \
    install kali-linux-top10 \
    kali-linux-wireless \
    sparta \
    man-db \
    exploitdb \
    htop  \
    tmux
 
CMD ["/bin/bash"]