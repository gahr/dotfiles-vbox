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

" Clang_Complete
set completeopt=menuone
let g:clang_library_path='/usr/local/llvm80/lib'
let g:clang_close_preview=1
let g:clang_complete_copen=0
let g:clang_auto_select=0
let g:clang_snippets=0
let g:clang_user_options='-std=c++14'
