FROM sharelatex/sharelatex:5
RUN apt update && \
    apt upgrade -y && \
    apt install -y python3-pygments fonts-linuxlibertine fonts-recommended fonts-noto
RUN tlmgr update --self && \
    tlmgr update --all && \
    tlmgr install scheme-full
ENV PATH="${PATH}:/usr/local/texlive/2024/bin/x86_64-linux"
