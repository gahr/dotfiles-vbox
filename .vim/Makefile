BUNDLES=	skywind3000/asyncrun.vim \
		Rip-Rip/clang_complete \
		altercation/vim-colors-solarized
all:
	mkdir -p autoload bundle
	curl -LSso autoload/pathogen.vim https://tpo.pe/pathogen.vim
	for b in ${BUNDLES}; do \
	    name=$$(echo $$b | cut -d / -f 2); \
	    [ -d bundle/$$name ] || git clone https://github.com/$${b}.git \
	    	bundle/$$name; \
	done
