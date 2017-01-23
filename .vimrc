set nocompatible              " be iMprcved, required
filetype off                  " required

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'flazz/vim-colorschemes'
Plugin 'vim-scripts/nginx.vim'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'tomtom/tcomment_vim'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'jmcantrell/vim-virtualenv'
" Plugin 'edkolev/tmuxline.vim'
Plugin 'scrooloose/syntastic'
Plugin 'SirVer/ultisnips'
Plugin 'honza/vim-snippets'
Plugin 'sickill/vim-monokai'
Plugin 'qpkorr/vim-bufkill'
Plugin 'vim-scripts/django.vim'
Plugin 'rodjek/vim-puppet'
Plugin 'davidhalter/jedi-vim'

call vundle#end()            " required
filetype plugin indent on    " required

syn on
map <C-e> :NERDTreeToggle<CR>
map <S-Tab> :bn<CR>
set t_Co=256 " Force 256 colors

colorscheme badwolf
hi Normal ctermbg=none
highlight NonText ctermbg=none


set guifont=DejaVu\ Sans:s12
if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif

let g:airline_theme='badwolf'
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
set laststatus=2
set encoding=utf-8   
set nu
set relativenumber
autocmd vimenter * NERDTree
let g:NERDTreeDirArrowExpandable = '▸'
let g:NERDTreeDirArrowCollapsible = '▾'
let mapleader = ","
let maplocalleader = ","
map <Leader>w :w <Esc>
map <Leader>q :q <Esc>
map <Leader>x :x <Esc>
map <Leader>d :BD <Esc>
map <Leader>v "*p <Esc>

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_c_compiler = "gcc"
let g:syntastic_c_compiler_options = " -std=c11"

" Trigger configuration. Do not use <tab> if you use
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"

set incsearch
set hlsearch
set cindent

" let g:tmuxline_preset = 'full'

set tabstop=8
set expandtab
set shiftwidth=4
set softtabstop=4
set noswapfile
filetype indent on
