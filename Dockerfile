FROM debian:bookworm-slim AS base

RUN apt update
RUN apt install -y gnupg

WORKDIR /root

COPY build-files build-files
RUN cat build-files/.bashrc >> /root/.bashrc

RUN apt update && apt install -y python3 python-is-python3 python3-pip pipx

RUN pipx install --include-deps ansible

CMD ["/bin/bash"]
