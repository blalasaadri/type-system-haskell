FROM gitpod/workspace-full

RUN cat .gitpod.bashrc >> ~/.bashrc
RUN curl -sSL https://get.haskellstack.org/ | sh
RUN stack setup
RUN stack install hlint