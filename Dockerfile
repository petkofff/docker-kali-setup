FROM kalilinux/kali-linux-docker

RUN apt-get update && apt-get -y \
    install kali-linux-top10 \
    kali-linux-wireless \
    sparta \
    man-db \
    exploitdb \
    htop  \
    tmux \
    git

ENV dotfilesfolder /root/dotfiles
RUN mkdir $dotfilesfolder  && \
    git clone https://github.com/petkofff/dotfiles.git $dotfilesfolder && \
    bash $dotfilesfolder/install.sh

CMD ["/bin/bash"]