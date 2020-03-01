
call plug#begin('~/.vim/plugged')

Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'Chiel92/vim-autoformat'
Plug 'tpope/vim-surround'
Plug 'junegunn/vim-easy-align'
Plug 'ntpeters/vim-better-whitespace'
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'scrooloose/nerdcommenter'
Plug 'itchyny/lightline.vim'
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
Plug 'purescript-contrib/purescript-vim'
Plug 'ajh17/VimCompletesMe'
Plug 'dense-analysis/ale'
Plug 'pangloss/vim-javascript'
Plug 'mxw/vim-jsx'
Plug 'morhetz/gruvbox'
Plug '907th/vim-auto-save'
Plug 'vim-airline/vim-airline'
Plug 'mattn/emmet-vim'
Plug 'leafgarland/typescript-vim'
Plug 'tpope/vim-markdown'

call plug#end()

" Easy fzf file search and buffer search
nnoremap <leader><leader> :GFiles<CR>
nnoremap <leader>fi       :Files<CR>
nnoremap <leader><CR>     :Buffers<CR>

" Turn off bells
set noerrorbells visualbell t_vb=
if has('autocmd')
  autocmd GUIEnter * set visualbell t_vb=
endif

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
let g:strip_whitespace_confirm=0

" highlight search
set hlsearch

" autoindentation
set autoindent

" autoformat
"noremap <F3> :Autoformat<CR>
" autoformat on save
"au BufWrite * :Autoformat
let g:autoformat_autoindent = 0
let g:autoformat_retab = 0
let g:autoformat_remove_trailing_spaces = 0

"let g:formatterpath = ['/usr/local/bin']

" golang highlighting
let g:go_highlight_build_constraints = 1
let g:go_highlight_extra_types = 1
let g:go_highlight_fields = 1
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_operators = 1
let g:go_highlight_structs = 1
"let g:go_highlight_types = 1

"let g:go_auto_sameids = 1

"let g:go_fmt_command = "goimports"

" yaml formatting and config
au! BufNewFile,BufReadPost *.{yaml,yml} set filetype=yaml foldmethod=indent
autocmd FileType yaml setlocal ts=2 sts=2 sw=2 expandtab
autocmd FileType yaml let b:autoformat_autoindent=0
