"Remap escape key
:imap kj <ESC>
:imap <leader>c <ESC>

"Convert to SJIS
nnoremap sjis <Esc>:e ++enc=shift-jis<Enter>

"Default indentation
set smartindent
set tabstop=2
set shiftwidth=2
set expandtab

stty ixany
stty ixoff -ixon
