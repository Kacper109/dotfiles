map Q gq 

set nowrap
set tabstop=4 
set shiftwidth=4 
set expandtab 
set number
set nocompatible
let g:context_enabled = 1

noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>
vnoremap <leader>y :'<,'>w !wl-copy<CR><CR>
nnoremap <leader>p :r !wl-paste<CR>

augroup AutoCopyWL
    autocmd!
    autocmd TextYankPost * silent! call system('wl-copy', getreg('"'))
augroup END

call plug#begin()

    Plug 'wellle/context.vim'

call plug#end()
