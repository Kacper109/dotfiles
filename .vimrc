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
nmap <silent> <c-k> :wincmd k<CR>
nmap <silent> <c-j> :wincmd j<CR>
nmap <silent> <c-h> :wincmd h<CR>
nmap <silent> <c-l> :wincmd l<CR>

augroup AutoCopyWL
    autocmd!
    autocmd TextYankPost * silent! call system('wl-copy', getreg('"'))
augroup END

call plug#begin()

    Plug 'wellle/context.vim'
    Plug 'scrooloose/nerdtree'

call plug#end()
" Open when no files were speficied on vim launch
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

" Toggle nerdtree
map <C-n> :NERDTreeToggle<CR>
