FROM sharelatex/sharelatex
RUN apt update && \
    apt upgrade -y && \
    apt install -y python-pygments fonts-linuxlibertine
RUN tlmgr option repository ctan && \
    tlmgr update --self && \
    tlmgr update --all && \
    tlmgr install scheme-full
