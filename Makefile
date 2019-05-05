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
	setxkbmap \
	subversion \
	thingylaunch \
	vim-console \
	virtualbox-ose-additions \
	xf86-input-keyboard \
	xf86-input-mouse \
	xinit \
	xrdb \
	xterm \

links:
.for f in ${LINKS}
	ln -fhs ${f:tA}  ~/$f
.endfor

pkgs:
	pkg install ${PKGS}

vim:
	make -C .vim
