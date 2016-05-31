set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'tell-k/vim-autopep8'
" HERE
"Plugin 'elixir-lang/vim-elixir'
"Plugin 'jelera/vim-javascript-syntax'
"Plugin 'cakebaker/scss-syntax.vim'
"Plugin 'othree/html5.vim'
"Plugin 'hail2u/vim-css3-syntax'
Plugin 'jtratner/vim-flavored-markdown'
  let g:markdown_fenced_languages=['ruby', 'javascript', 'elixir', 'clojure', 'sh', 'html', 'sass', 'scss', 'haml', 'erlang', 'python']

autocmd BufNewFile,BufReadPost *.md,*.markdown set filetype=markdown
autocmd FileType markdown set tw=80
"Plugin 'kevinw/pyflakes-vim'
" Plugin 'vim-scripts/pep8'
" Plugin 'vim-scripts/Pydiction'
Plugin 'vim-scripts/indentpython.vim'
Plugin 'tomtom/tcomment_vim'

"Themes
Plugin 'tomasr/molokai'

Plugin 'NLKNguyen/papercolor-theme'

Plugin 'tpope/vim-fugitive'
Plugin 'scrooloose/nerdtree'
" Plugin 'orenhe/pylint.vim'
" Plugin 'mustache/vim-mustache-handlebars'
"Plugin 'bling/vim-airline'       " UI statusbar niceties
" Plugin 'chriskempson/base16-vim'
"Plugin 'skammer/vim-css-color'
"Plugin 'roman/golden-ratio'
Plugin 'kien/ctrlp.vim.git'
" Plugin 'MarcWeber/vim-addon-mw-utils'
Plugin 'tomtom/tlib_vim'
" Plugin 'garbas/vim-snipmate'
" Plugin 'honza/vim-snippets'
Plugin 'bronson/vim-trailing-whitespace'
" Plugin 'kmyk/sdl2.vim'
" Plugin 'Valloric/YouCompleteMe'
  " let g:ycm_autoclose_preview_window_after_completion=1
  " map <leader>g  :YcmCompleter GoToDefinitionElseDeclaration<CR>
"Plugin 'vim-scripts/Conque-Shell'
" Plugin 'vim-airline/vim-airline'
" Plugin 'powerline/powerline'
" " END HERE
Plugin 'lepture/vim-jinja'
Plugin 'Glench/Vim-Jinja2-Syntax'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
call vundle#end()            " required
filetype plugin indent on    " required

" Vim Air Line
let g:airline_theme='murmur'
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'
let g:airline_powerline_fonts=1
let g:airline_left_sep = '|'
let g:airline_right_sep = '|'
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#fnamemod = ':t'
set laststatus=2               " enable airline even if no splits


set number " line numbering
set autoread
set t_Co=256 " Force 256 colors

set t_ut= " improve screen clearing by using the background color
set background=light
syntax enable
set enc=utf-8

set cul
set cuc
:highlight ExtraWhitespace ctermbg=red guibg=red
:autocmd Syntax * syn match ExtraWhitespace /\s\+$\| \+\ze\\t/

nnoremap <cr> :nohlsearch<cr>

nnoremap J mzJ`z
set expandtab
set autoindent
set showcmd
set noswapfile
set encoding=utf-8
set scrolloff=3
set tabstop=4
set shiftwidth=4
set softtabstop=4
"set expandtab
set hlsearch
set incsearch
set ignorecase
set smartcase
set smartindent
set wildmode=list:longest,list:full
set wildignore+=*.o,*.obj,.git,*.rbc,*.class,.svn,vendor/gems/*,*.pyc

" Set dark color
colorscheme molokai
set background=dark


" Set light color
" set t_Co=256   " This is may or may not needed.
" set background=light
" colorscheme PaperColor


"hi Normal ctermbg=none

" autocmd vimenter * NERDTree

" Pep8 using F6
" " You can change with this :
let g:pep8_map='<F6>'

" Set autocomplete form
set completeopt=menuone,longest,preview

"--- python formatting help ---
autocmd BufRead *.py set smartindent cinwords=if,elif,else,for,while,try,except,finally,def,class

" Enable omni completion.
" autocmd FileType css set omnifunc=csscomplete#CompleteCSS
" autocmd FileType html,markdown,ctp set omnifunc=htmlcomplete#CompleteTags
" autocmd FileType javascript set omnifunc=javascriptcomplete#CompleteJS
" autocmd FileType python set omnifunc=pythoncomplete#Complete
" autocmd FileType xml set omnifunc=xmlcomplete#CompleteTags
" autocmd FileType php,ctp set omnifunc=phpcomplete#CompletePHP
" autocmd FileType vim set omnifunc=syntaxcomplete#Complete
" autocmd CursorMovedI * if pumvisible() == 0|pclose|endif
" autocmd InsertLeave * if pumvisible() == 0|pclose|endif
" autocmd FileType html set omnifunc=htmlcomplete#CompleteTags

let g:pydiction_location='/home/tiago/.vim/bundle/Pydiction/complete-dict'
let g:miniBufExplTabWrap = 9

" Syntasttic
" set statusline+=%#warningmsg#
" set statusline+=%{SyntasticStatuslineFlag()}
" set statusline+=%*


if has("gui_running")
   highlight SpellBad term=underline gui=undercurl guisp=Orange
endif

" Move lines like in atom.
nnoremap <c-s-j> :m .+1<CR>==
nnoremap <c-s-k> :m .-2<CR>==
inoremap <c-s-j> <Esc>:m .+1<CR>==gi
inoremap <c-s-k> <Esc>:m .-2<CR>==gi
vnoremap <c-s-j> :m '>+1<CR>gv=gv
vnoremap <c-s-k> :m '<-2<CR>gv=gv

let mapleader=","

map <F9> :NERDTreeToggle <cr>
map <leader>t :terminal<cr>
map <leader>l :w <bar> :bn<cr>
map <leader>j :w <bar> :bp<cr>
map <leader>k :x<cr>
command Vcs sp ~/.vim-cheatsheet/cheatsheet.md
