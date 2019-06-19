FROM gitpod/workspace-full

RUN curl -sSL https://get.haskellstack.org/ | sh
RUN stack setup
RUN stack install hlint