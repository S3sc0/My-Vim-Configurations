set number
let g:netrw_banner = 0
let g:netrw_liststyle = 3
let g:netrw_altv = 1
let g:netrw_winsize = 20
map <C-n> :Lexplore<CR>
augroup ProjectDrawer
  autocmd!
  autocmd VimEnter * :Lexplore
augroup END

" Something Like Fuzzy Finder
set path+=**
set wildmenu

" VIM PLUG MANAGER

if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.vim/plugged')

Plug 'tomasr/molokai'
Plug 'dracula/vim', { 'as': 'dracula' }

call plug#end()
