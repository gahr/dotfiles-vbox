LINKS=	.Xresources \
	.config \
	.cshrc \
	.gitconfig \
	.ssh/config \
	.vim \
	.vimrc \
	.xinitrc

PKGS=	cgdb \
	dialog4ports \
	doas \
	gdb \
	git \
	i3 \
	inconsolata-ttf \
	p5-ack \
	setxkbmap \
	subversion \
	thingylaunch \
	vim-console \
	virtualbox-ose-additions \
	xauth \
	xf86-input-keyboard \
	xf86-input-mouse \
	xinit \
	xrdb \
	xterm \

all:
	@echo "Run 'make system' as root"
	@echo "Run 'make user' as user"

pkgs:
	pkg install ${PKGS}

rc:
	sysrc vboxguest_enable=yes
	sysrc vboxservice_enable=yes
	sysrc ntpdate_enable=yes

links:
	for f in ${LINKS}; do \
	    rf=${PWD}/$$f; \
	    hf=${HOME}/$$f; \
	    mkdir -p $$(dirname $$hf); \
	    ln -fhs $$rf $$hf; \
	done

vim:
	make -C .vim

system: pkgs rc

user: links vim
