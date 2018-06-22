" plug for plugin handling
" https://github.com/junegunn/vim-plug

if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin()


Plug 'luochen1990/rainbow' " Rainbow parenthesis

Plug 'vim-syntastic/syntastic' " Syntastic syntax plugin
" All of your Plugins must be added before the following line
call plug#end()            " required
" Brief help
" :PluginList       - Upgrade plug itself
" :PlugInstall      - installs plugins; append `!` to update or just :PlugUpdate
" :PlugClean        - remove unused plugins
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line



"! Automatic word wrap
set tw=79

" syntax highlighting
syntax enable

"! Visualising tabs and trailing whitespaces
hi whitespace ctermbg=darkgray
syntax match whitespace /\t/
syntax match whitespace /\s\+$/

"! Set search to highlight hits
set hlsearch

" Line numbering
set number
" case in search dissabled
set ignorecase
set smartcase

" utf-8 encoding
set encoding=utf-8

"set bell to be visual
set visualbell

" Set tab settings
set tabstop=4     "! How many collumns are \t
set expandtab     "! Set soft tabs
set shiftwidth=4  "! Set automatic indent width
set softtabstop=4 "! Set softtab to be 4 spaces
set smarttab
" set ai            "! Set auto indent
set si            "! Set smart indent
filetype indent on
filetype plugin indent on

" set :W to sudo save
command W w !sudo tee % > /dev/null

"! Set vim to use system clipbord
set clipboard=unnamedplus

" Rainbow parenthesis config
let g:rainbow_active = 1 "0 if you want to enable it later via :RainbowToggle
let g:rainbow_conf = {
\	'guifgs': ['royalblue3', 'darkorange3', 'seagreen3', 'firebrick'],
\	'ctermfgs': ['lightblue', 'lightyellow', 'lightcyan', 'lightmagenta'],
\	'operators': '_,_',
\	'parentheses': ['start=/(/ end=/)/ fold', 'start=/\[/ end=/\]/ fold', 'start=/{/ end=/}/ fold'],
\	'separately': {
\		'*': {},
\		'tex': {
\			'parentheses': ['start=/(/ end=/)/', 'start=/\[/ end=/\]/'],
\		},
\		'lisp': {
\			'guifgs': ['royalblue3', 'darkorange3', 'seagreen3', 'firebrick', 'darkorchid3'],
\		},
\		'vim': {
\			'parentheses': ['start=/(/ end=/)/', 'start=/\[/ end=/\]/', 'start=/{/ end=/}/ fold', 'start=/(/ end=/)/ containedin=vimFuncBody', 'start=/\[/ end=/\]/ containedin=vimFuncBody', 'start=/{/ end=/}/ fold containedin=vimFuncBody'],
\		},
\		'html': {
\			'parentheses': ['start=/\v\<((area|base|br|col|embed|hr|img|input|keygen|link|menuitem|meta|param|source|track|wbr)[ >])@!\z([-_:a-zA-Z0-9]+)(\s+[-_:a-zA-Z0-9]+(\=("[^"]*"|'."'".'[^'."'".']*'."'".'|[^ '."'".'"><=`]*))?)*\>/ end=#</\z1># fold'],
\		},
\		'css': 0,
\	}
\}

" Syntastic syntax check plugin
"set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0


