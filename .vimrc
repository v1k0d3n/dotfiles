set runtimepath=$HOME/dotfiles/.vim/,$VIMRUNTIME
set paste
execute pathogen#infect()
syntax on
filetype plugin indent on
colorscheme onedark
set termguicolors
packadd! onedark.vim

let g:onedark_termcolors=256
let g:lightline = {
  \ 'colorscheme': 'onedark',
  \ }
