FROM archlinux

LABEL maintainer="lenartlola <lenartlola@proton.me>"

WORKDIR /pwn

RUN pacman -Sy --noconfirm git neovim make gcc zsh curl gdb radare2

RUN sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

ENTRYPOINT [ "zsh" ]
