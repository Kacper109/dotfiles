source $VIMRUNTIME/defaults.vim
map Q gq
syntax on
filetype plugin indent on
set nowrap
set tabstop=4 
set shiftwidth=4 
set expandtab
set number
set nocompatible

" Yank selected text to system clipboard using wl-copy
vnoremap <leader>y :'<,'>w !wl-copy<CR><CR>

" Paste from system clipboard using wl-paste
nnoremap <leader>p :r !wl-paste<CR>

" Optional: Automatically copy any yank to system clipboard
augroup AutoCopyWL
  autocmd!
  autocmd TextYankPost * silent! call system('wl-copy', getreg('"'))
augroup END
