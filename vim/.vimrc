
call plug#begin('~/.vim/plugged')


Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'junegunn/vim-easy-align'
Plug 'ntpeters/vim-better-whitespace'
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'scrooloose/nerdcommenter'
Plug 'itchyny/lightline.vim'
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
Plug 'purescript-contrib/purescript-vim'
Plug 'ajh17/VimCompletesMe'
Plug 'Chiel92/vim-autoformat'
Plug 'jiangmiao/auto-pairs'
Plug 'pangloss/vim-javascript'
Plug 'mxw/vim-jsx'


call plug#end()

nmap ; :buffers<cr>
nmap <leader>t :files<cr>
nmap <leader>r :tags<cr>

" preferred backspace behavior
set bs=2

set number

set laststatus=2
if !has('gui_running')
	set background=dark
	set t_Co=256
endif

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
