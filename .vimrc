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

" Add pathogen plugin
" https://github.com/tpope/vim-pathogen
"execute pathogen#infect()

" Syntastic syntax plugin
"set statusline+=%#warningmsg#
"set statusline+=%{SyntasticStatuslineFlag()}
"set statusline+=%*

"let g:syntastic_always_populate_loc_list = 1
"let g:syntastic_auto_loc_list = 1
"let g:syntastic_check_on_open = 1
"let g:syntastic_check_on_wq = 0
