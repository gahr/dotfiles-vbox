FILES=	.xinitrc \
	.config \
	.Xdefaults

all:
.for f in ${FILES}
	ln -sf ${f:tA}  ~/$f
.endfor
