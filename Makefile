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
	git-lite \
	i3 \
	inconsolata-ttf \
	p5-ack \
	setxkbmap \
	thingylaunch \
	vim-console \
	virtualbox-ose-additions \
	xauth \
	xf86-input-libinput \
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
	sysrc vboxservice_flags="--disable-timesync"
	sysrc ntpdate_enable=yes

doas:
	echo "permit nopass :wheel" > /usr/local/etc/doas.conf

links:
	for f in ${LINKS}; do \
	    rf=${PWD}/$$f; \
	    hf=${HOME}/$$f; \
	    mkdir -p $$(dirname $$hf); \
	    ln -fhs $$rf $$hf; \
	done

vim:
	make -C .vim

system: pkgs rc doas

user: links vim
