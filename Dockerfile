FROM sharelatex/sharelatex:5
RUN apt update && \
    apt upgrade -y && \
    apt install -y python3-pygments fonts-linuxlibertine
RUN tlmgr option repository https://ftp.tu-chemnitz.de/pub/tug/historic/systems/texlive/2023/tlnet-final && \
    tlmgr update --self && \
    tlmgr update --all && \
    tlmgr install scheme-full
