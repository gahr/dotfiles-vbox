" Solarized options
let g:solarized_termtrans=1
let g:solarized_termcolors=16

execute pathogen#infect()

syntax on
filetype plugin indent on

set background=dark
colorscheme solarized

set colorcolumn=80
highlight ColorColumn ctermbg=7

set nocp autoindent cindent expandtab ts=4 sw=4 ignorecase nowrap number ruler smartcase modeline
set laststatus=2 statusline=%f%m%r%h%w\ [TYPE=%Y]\ [ASCII=\%03.3b]\ [HEX=\%02.2B]\ [POSITION=%l,%v]
