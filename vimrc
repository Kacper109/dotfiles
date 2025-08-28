map Q gq
syntax on
filetype plugin on
filetype plugin indent on
set nowrap
set tabstop=4 
set shiftwidth=4 
set expandtab
set number
set nocompatible

noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>

" Yank selected text to system clipboard using wl-copy
vnoremap <leader>y :'<,'>w !wl-copy<CR><CR>

" Paste from system clipboard using wl-paste
nnoremap <leader>p :r !wl-paste<CR>

" Optional: Automatically copy any yank to system clipboard
augroup AutoCopyWL
  autocmd!
  autocmd TextYankPost * silent! call system('wl-copy', getreg('"'))
augroup END
let g:context_enabled = 1
call plug#begin()

Plug 'wellle/context.vim'

call plug#end()
