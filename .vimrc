set runtimepath=$HOME/dotfiles/.vim/,$VIMRUNTIME
set paste
set number
highlight LineNr term=bold cterm=NONE ctermfg=Gray  ctermbg=NONE gui=NONE guifg=#656565 guibg=NONE
highlight Comment guifg=#656565 LineNr ctermfg=grey
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
