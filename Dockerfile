FROM archlinux

LABEL maintainer="lenartlola <lenartlola@proton.me>"

WORKDIR /pwn

RUN pacman -Sy --noconfirm \
	git \
	vim \
	neovim \
	make \
	gcc \
	zsh \
	curl \
	gdb \
	radare2 \
	nasm \
	python-pip \
	python-pwntools \
	ropgadget \
	checksec

RUN git clone https://github.com/pwndbg/pwndbg

WORKDIR /pwn/pwndbg

RUN bash setup.sh

WORKDIR /pwn

RUN sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

ENTRYPOINT [ "zsh" ]
