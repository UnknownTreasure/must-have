"============================================================================="
"                                                                             "
"                             Setup for Neovim                                "
"                                                                             "
"============================================================================="





"========== Vim Plug ==========" 

call plug#begin('~/.local/share/nvim/plugged')

Plug 'morhetz/gruvbox'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'scrooloose/nerdtree'
Plug 'junegunn/goyo.vim'
Plug 'kristijanhusak/vim-hybrid-material'
Plug 'valloric/youcompleteme'
Plug 'jiangmiao/auto-pairs'
Plug 'nightsense/vrunchbang'
Plug 'rakr/vim-one'
Plug 'tyrannicaltoucan/vim-quantum'
Plug 'altercation/vim-colors-solarized'
Plug 'tyrannicaltoucan/vim-deep-space'
Plug 'ayu-theme/ayu-vim'

call plug#end()

"========== Color Scheme ==========" 

syntax on 
filetype indent on

"colorscheme deep-space
"colorscheme quantum
let ayucolor="mirage"
colorscheme ayu
set background=dark
set termguicolors 

"let g:gruvbox_termcolors = '256'
"let g:gruvbox_contrast_dark = 'soft'
"let g:gruvbox_invert_selection = 1

"========== Airline ==========" 

let g:airline_powerline_fonts = 1
"set t_Co=256
"let g:airline_theme='quantum'
let g:airline_theme='ayu_mirage'

"========== NerdTREE =========="

" Automatically opens NerdTREE when NVim is opened. "
" autocmd vimenter * NERDTree

" Automatically opens NerdTREE if no files were specified. "
" autocmd StdinReadPre * let s:std_in=1
" autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | endif

map <C-n> :NERDTreeToggle<CR>
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

"========== Goyo =========="

let g:goyo_width = '180'

"=========== Spaces and Tabs ==========="

set expandtab
set tabstop=4
set shiftwidth=4
set softtabstop=4

"========== UI Config =========="

set colorcolumn=80
set number 
set relativenumber
set showmatch

"========== General =========="

set encoding=utf8
set nomodeline
set clipboard=unnamed 


"========== Shortcuts ==========" 

inoremap '' <esc> 
