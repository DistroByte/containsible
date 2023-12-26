FROM debian:bookworm-slim AS base

WORKDIR /root

COPY build-files build-files
RUN cat build-files/.bashrc >> /root/.bashrc && cat build-files/ansible.cfg >> /root/ansible.cfg

RUN apt update && apt install --no-install-recommends -y gnupg \
	dnsutils \
	net-tools \
	python3 \
	python-is-python3 \
	python3-pip \
	pipx \
	vim \
	&& apt autoremove -y \
	&& apt clean \
	&& rm -rf /var/lib/apt/lists/*

RUN pipx install --include-deps ansible

CMD ["/bin/bash"]
