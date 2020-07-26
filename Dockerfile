FROM sharelatex/sharelatex
RUN tlmgr option repository ctan
RUN tlmgr update --self
RUN tlmgr update --all
RUN tlmgr install scheme-full
