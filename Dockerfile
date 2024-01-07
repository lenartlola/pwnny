FROM archlinux

LABEL maintainer="lenartlola <lenartlola@proton.me>"

RUN pacman -Syu --noconfirm

WORKDIR /pwn

RUN pacman -Sy --noconfirm \
	git \
	vim \
	neovim \
	make \
	gcc \
	zsh \
	curl \
	strace \
	gdb \
	radare2 \
	nasm \
	python-pip \
	python-pwntools \
	ropgadget \
	checksec \
	lib32-glibc

RUN git clone https://github.com/pwndbg/pwndbg

WORKDIR /pwn/pwndbg

#RUN bash setup.sh

RUN sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

ENTRYPOINT [ "zsh" ]
