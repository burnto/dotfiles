
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
Plug 'vim-airline/vim-airline'

call plug#end()

" Easy fzf file search and buffer search
nnoremap <leader><leader> :GFiles<CR>
nnoremap <leader>fi       :Files<CR>
nnoremap <leader><CR>     :Buffers<CR>

" Show line numbers
set number

" Show the status bar always
set laststatus=2

" Set dark mode and term colors
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

set completeopt=longest,menuone
set showcmd

" use spaces instead of tabs
set tabstop=2     " width of a tab
set shiftwidth=2  " indents have width 2
"set completeopt=menu
set softtabstop=2 " number of columns for a tab
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

" highlight search
set hlsearch
