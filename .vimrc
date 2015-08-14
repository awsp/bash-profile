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

" Show command in bottom bar"
set showcmd

" move vertically by visual line"
nnoremap t gj
nnoremap k gk

" avoid using <ESC> key"
:imap jj <ESC> 
:imap kj <ESC>l

" highlight last inserted text"
nnoremap gV `[v`]

" Auto complete symbols"
inoremap { {}<Left>
inoremap [ []<Left>
inoremap ( ()<Left>
inoremap " ""<Left>
inoremap ' ''<Left>

" Move cursor even in insert mode"
inoremap <C-j> <Down>
inoremap <C-k> <Up>
inoremap <C-h> <Left>
inoremap <C-l> <Right>

" Move cursor to beginning / ending of a line in normal mode"
noremap 0 $
noremap 1 ^

" Move cursor to beginning / endling of a line in insert mode"
:imap hh <ESC>^i
:imap kk <ESC>$a

" Enter in insert mode"
:map <Enter> i<CR><Esc>h

set guifont=Monaco:h14
