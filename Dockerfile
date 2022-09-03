FROM sharelatex/sharelatex:3
RUN apt update && \
    apt upgrade -y && \
    apt install -y python3-pygments fonts-linuxlibertine
ENV PATH="${PATH}:/usr/local/texlive/2022/bin/x86_64-linux"
RUN tlmgr option repository ctan && \
    tlmgr update --self && \
    tlmgr update --all && \
    tlmgr install scheme-full
