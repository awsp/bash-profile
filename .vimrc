syntax on
filetype indent plugin on
set hidden
set wildmenu
set showcmd
set hlsearch
set autoindent
set number
set shiftwidth=2
set softtabstop=2
set tabstop=2
set expandtab

:imap jj <ESC> 
inoremap { {}<Left>
inoremap [ []<Left>
inoremap ( ()<Left>
inoremap " ""<Left>
inoremap ' ''<Left>

inoremap <C-j> <Down>
inoremap <C-k> <Up>
inoremap <C-h> <Left>
inoremap <C-l> <Right>

noremap 0 $
noremap 1 ^
