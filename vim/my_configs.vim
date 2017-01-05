let mapleader = ";"

"Remap escape key
:imap <leader>j <ESC>

"Remap directional keys
:imap <leader>c {}<ESC>
:imap <leader>b []<ESC>
:imap <leader>r ()<Esc>
:imap <leader>h <Esc>^
:imap <leader>l <Esc>$

"Remap tab key
nnoremap <leader>t :tabe<cr>
nnoremap <leader>1 1gt
nnoremap <leader>2 2gt
nnoremap <leader>3 3gt
nnoremap <leader>4 4gt
nnoremap <leader>5 5gt
nnoremap <leader>6 6gt
nnoremap <leader>7 7gt
nnoremap <leader>8 8gt
nnoremap <leader>9 9gt
nnoremap <leader>0 :tablast<cr>

set gfn=Roboto\ Mono 13

"Convert to SJIS
nnoremap sjis <Esc>:e ++enc=shift-jis<Enter>

"Default indentation
set smartindent
set tabstop=2
set shiftwidth=2
set expandtab
set nu

stty ixany
stty ixoff -ixon
