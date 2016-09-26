set nocompatible

"allow backspacing over everything in insert mode
set backspace=indent,eol,start

"store lots of :cmdline history
set history=1000

set showcmd  "show incomplete cmds down the bottom
set showmode "show current mode down the bottom

set number "show line numbers

"display tabs and trailing spaces
set list
set listchars=tab:▷⋅,trail:⋅,nbsp:⋅

set incsearch "find the next match as we type the search
set hlsearch  "hilight searches by default

set wrap      "dont wrap lines
set linebreak "wrap lines at convenient points

"default indent settings
set shiftwidth=4
set softtabstop=0
set expandtab
set smarttab

set autoindent

"folding settings
set foldmethod=indent "fold based on indent
set foldnestmax=3     "deepest fold is 3 levels
set nofoldenable      "dont fold by default

set wildmode=list:longest   "make cmdline tab completion similar to bash
set wildmenu                "enable ctrl-n and ctrl-p to scroll thru matches
set wildignore=*.o,*.obj,*~ "stuff to ignore when tab completing

" TODO: not working
"set formatoptions-=o "dont continue comments when pushing o/O

"vertical/horizontal scroll off settings
set scrolloff=3
set sidescrolloff=7
set sidescroll=1

"load ftplugins and indent files
filetype plugin on
filetype indent on

"turn on syntax highlighting
syntax on

"hide buffers when not displayed
set hidden

iabbrev teh the

set ignorecase
set smartcase

"map comment
map <leader>c <c-_><c-_>

"map split movements
nnoremap <S-Up> :wincmd k<CR>
nnoremap <S-Down> :wincmd j<CR>
nnoremap <S-Left> :wincmd h<CR>
nnoremap <S-Right> :wincmd l<CR>

"map tab movements
nnoremap <A-Left> :tabp<CR>
nnoremap <A-Right> :tabn<CR>

"autoremove all trailing whitespaces
autocmd BufWritePre * %s/\s\+$//e
