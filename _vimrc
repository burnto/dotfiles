" Pathogen load
filetype off

call pathogen#infect()
call pathogen#helptags()

filetype plugin indent on
syntax on


set guioptions-=T         " Remove toolbar
set guioptions-=r         " Remove right scrollbar
set lines=60 columns=100  " UI size
set guifont=Monaco:h12    " font size

let g:pymode_folding = 0


