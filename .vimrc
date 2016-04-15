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
Plugin 'vim-scripts/pep8'
Plugin 'vim-scripts/Pydiction'
Plugin 'vim-scripts/indentpython.vim'
Plugin 'tomtom/tcomment_vim'
Plugin 'tomasr/molokai'
Plugin 'tpope/vim-fugitive'
Plugin 'scrooloose/nerdtree'
Plugin 'mustache/vim-mustache-handlebars'
"Plugin 'bling/vim-airline'       " UI statusbar niceties
Plugin 'chriskempson/base16-vim'
"Plugin 'skammer/vim-css-color'
"Plugin 'roman/golden-ratio'
Plugin 'kien/ctrlp.vim.git'
Plugin 'MarcWeber/vim-addon-mw-utils'
Plugin 'tomtom/tlib_vim'
Plugin 'garbas/vim-snipmate'
Plugin 'honza/vim-snippets'
Plugin 'bronson/vim-trailing-whitespace'
" Plugin 'kmyk/sdl2.vim'
Plugin 'Valloric/YouCompleteMe'
  let g:ycm_autoclose_preview_window_after_completion=1
  map <leader>g  :YcmCompleter GoToDefinitionElseDeclaration<CR>
"Plugin 'vim-scripts/Conque-Shell'
Plugin 'vim-airline/vim-airline'
Plugin 'powerline/powerline'
  set laststatus=2               " enable airline even if no splits
"  let g:airline_theme='luna'
  let g:airline_powerline_fonts=1
  let g:airline_powerline_fonts = 1
  let g:airline_left_sep = '|'
  let g:airline_right_sep = '|'
  let g:airline#extensions#tabline#enabled = 1
  let g:airline#extensions#tabline#fnamemod = ':t'
" END HERE
Plugin 'lepture/vim-jinja'
Plugin 'Glench/Vim-Jinja2-Syntax'
call vundle#end()            " required
filetype plugin indent on    " required


set number " line numbering
set autoread
set t_Co=256 " Force 256 colors

set t_ut= " improve screen clearing by using the background color
set background=dark
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
set background=dark
set wildmode=list:longest,list:full
set wildignore+=*.o,*.obj,.git,*.rbc,*.class,.svn,vendor/gems/*,*.pyc
colorscheme molokai
"hi Normal ctermbg=none

autocmd vimenter * NERDTree

" Pep8 using F6
" " You can change with this :
let g:pep8_map='<F6>'

" Set autocomplete form
set completeopt=menuone,longest,preview

"--- python formatting help ---
autocmd BufRead *.py set smartindent cinwords=if,elif,else,for,while,try,except,finally,def,class

" Enable omni completion.
autocmd FileType css set omnifunc=csscomplete#CompleteCSS
autocmd FileType html,markdown,ctp set omnifunc=htmlcomplete#CompleteTags
autocmd FileType javascript set omnifunc=javascriptcomplete#CompleteJS
autocmd FileType python set omnifunc=pythoncomplete#Complete
autocmd FileType xml set omnifunc=xmlcomplete#CompleteTags
autocmd FileType php,ctp set omnifunc=phpcomplete#CompletePHP
autocmd FileType vim set omnifunc=syntaxcomplete#Complete
autocmd CursorMovedI * if pumvisible() == 0|pclose|endif
autocmd InsertLeave * if pumvisible() == 0|pclose|endif
autocmd FileType html set omnifunc=htmlcomplete#CompleteTags

let g:pydiction_location='/home/tiago/.vim/bundle/Pydiction/complete-dict'
let g:miniBufExplTabWrap = 1

if has("gui_running")
   highlight SpellBad term=underline gui=undercurl guisp=Orange
endif

map <F9> :NERDTree <cr>
map <F7> :NERDTreeClose <cr>
map <leader>t :mix test<cr>
map <leader>t :mix dogma<cr>
command Vcs sp ~/.vim-cheatsheet/cheatsheet.md
