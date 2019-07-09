set runtimepath=~/.vim,$VIMRUNTIME
set sw=3 ts=3 expandtab
let mapleader = ";"
map <leader>ev :edit ~/.vimrc<CR>
map <leader>sv :source ~/.vimrc<CR>
map <leader>trc :normal oimport pdb; pdb.set_trace()<CR>
map <leader>gts :!git status
map <leader>gta :!git add "%"
map <C-j> <C-W><C-J><C-W>_
map <C-k> <C-W><C-K><C-W>_
set guioptions-=T
colorscheme ron
set guifont=DejaVu\ Sans\ Mono\ Bold\ 20
syntax on
filetype plugin indent on
let g:pymode_lint_ignore = ["E111", "W",]
call plug#begin('~/.vim/plugged')
Plug 'airblade/vim-gitgutter'
Plug 'itchyny/lightline.vim'
Plug 'junegunn/fzf'
Plug 'junegunn/fzf.vim'
Plug 'mattn/emmet-vim'
Plug 'scrooloose/nerdtree'
Plug 'terryma/vim-multiple-cursors'
Plug 'tpope/vim-eunuch'
Plug 'tpope/vim-surround'
Plug 'davidhalter/jedi-vim'
Plug 'christoomey/vim-tmux-navigator'
call plug#end()
set guioptions+=aM
