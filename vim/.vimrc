
call plug#begin('~/.vim/plugged')

Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-surround'
Plug 'junegunn/vim-easy-align'
Plug 'ntpeters/vim-better-whitespace'
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'scrooloose/nerdcommenter'
Plug 'itchyny/lightline.vim'
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
Plug 'purescript-contrib/purescript-vim'
Plug 'ajh17/VimCompletesMe'
Plug 'Chiel92/vim-autoformat'
Plug 'pangloss/vim-javascript'
Plug 'mxw/vim-jsx'
Plug 'morhetz/gruvbox'
Plug '907th/vim-auto-save'

call plug#end()

nnoremap <leader><leader> :Files<CR>
nnoremap <leader><CR>     :Buffers<CR>

set number

set laststatus=2

if !has('gui_running')
	set background=dark
	set t_Co=256
endif

" use modern full color
set termguicolors

" setup gruvbox with hard contrast
let g:gruvbox_contrast_dark='hard'
colorscheme gruvbox

" preferred backspace behavior
set bs=2


" disable folding
set nofoldenable

set completeopt=menu
set showcmd

" use spaces instead of tabs
set tabstop=4     " width of a tab
set shiftwidth=4  " indents have width 4
set softtabstop=4 " number of columns for a tab
set expandtab     " expand tabs to spaces

" start interactive easyalign in visual mode (e.g. vipga)
xmap ga <plug>(easyalign)

" start interactive easyalign for a motion/text object (e.g. gaip)
nmap ga <Plug>(EasyAlign)

" don't give the "ATTENTION" message when an existing swap file is found.
set shortmess+=A

" better whitespace
let g:better_whitespace_enabled=1
let g:strip_whitespace_on_save=1
