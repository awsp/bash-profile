" File: ~/.vim_runtime/my_configs.vim
:imap jj <ESC> 
:imap kj <ESC>l
:imap <leader>c <ESC>
set nu
set nofu
map <D-y> :NERDTreeToggle<CR>
map <C-y> :NERDTreeToggle<CR>
:imap <D-d> <ESC>viw
map <D-d> <ESC>viw
map <C-l> :tabn<CR>
map <C-h> :tabp<CR>
map <C-n> :tabnew<CR>
map qq :NERDTreeFind<CR>
let g:NERDTreeWinPos = "left"
if has("gui_macvim")
  let g:ctrlp_map = '<D-e>'
endif
autocmd vimenter * NERDTreeFind
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
nnoremap sjis <Esc>:e ++enc=shift-jis<Enter>
