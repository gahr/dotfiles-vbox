LINKS=	.xinitrc \
	.config \
	.Xresources

PKGS=	dialog4ports \
	git \
	i3 \
	inconsolata-ttf \
	setxkbmap \
	subversion \
	sudo \
	thingylaunch \
	vim-console \
	virtualbox-ose-additions \
	xf86-input-keyboard \
	xf86-input-mouse \
	xinit \
	xrdb \
	xterm

links:
.for f in ${LINKS}
	ln -sf ${f:tA}  ~/$f
.endfor

pkgs:
	pkg install ${PKGS}
