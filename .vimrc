" plug for plugin handling
" https://github.com/junegunn/vim-plug

if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin()

Plug 'bronson/vim-trailing-whitespace'

Plug 'luochen1990/rainbow' " Rainbow parenthesis

Plug 'vim-syntastic/syntastic' " Syntastic syntax plugin

Plug 'tpope/vim-fugitive' "git blame

Plug 'airblade/vim-gitgutter' "git diff in vim

Plug 'scrooloose/nerdtree'

Plug 'Xuyuanp/nerdtree-git-plugin'

Plug 'PProvost/vim-ps1' "Powershell syntax

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
" set tw=79

"! Line length highlighter
set cc=50
hi ColorColumn ctermbg=234
let &colorcolumn="60,80,".join(range(100,500),",")

" syntax highlighting
syntax enable

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
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_python_checkers = ['pylint', 'python']          " OBS Requires pylint

"Automaticly start nerdtree
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | endif

"Auto close nerdtree if it is the only thing open
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

"Ctrl t for togling nerdtree
map <C-t> :NERDTreeToggle<CR>

"Ctrl b for git blame
map <C-b> :Gblame<CR>

" Ctrl n pretify json
map <C-n> :%!jq .<CR>

" Ctrl m unpretify json
map <C-m> :%!jq -c .<CR>

" Ctrl j toggle linenumber
function! LineNumToggle()
    if &number
        set nonumber
        GitGutterSignsDisable
    else
        set number
        GitGutterSignsEnable
    endif
endfunction

map <C-j> :call LineNumToggle()<CR>

" Habit breaking stuf
noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>


" Allow mouse in vim
" set mouse=nvc

"! Set vim to use system clipbord
set clipboard=unnamedplus

