"Remap leader key
let mapleader = ";"

"Remap escape key
:imap kj <ESC>
:imap <leader>e <ESC>

"Convert to SJIS
nnoremap sjis <Esc>:e ++enc=shift-jis<Enter>

"Default indentation
set smartindent
set tabstop=2
set shiftwidth=2
set expandtab

" Move curosr to beginning / ending of a line in insert mode"
:imap <leader>i <ESC>I
:imap <leader>a <ESC>A

stty ixany
stty ixoff -ixon
