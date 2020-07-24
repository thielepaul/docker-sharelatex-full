FROM sharelatex/sharelatex
RUN tlmgr update --self
RUN tlmgr install scheme-medium
