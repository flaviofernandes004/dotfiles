so ~/.config/nvim/plugins.vim

" Show line numbers
" set number

" Show relative line number
set relativenumber

" Wrap the line
set wrap

" Don't wrap in the middle of a word / tag
set linebreak
" Don't wrap the line for us vim
set textwidth=0
set wrapmargin=0

" <tab> is equal to two spaces
set tabstop=2

" Finetunes amount of whitespace to be inserted
set softtabstop=2

" Spaces to use for indenting (with > and <)
set shiftwidth=2

" Tabs are spaces
set expandtab

" Make backspace behave better
set backspace=indent,eol,start

" Copy indent from current line when starting a new line
set autoindent

" Copy the indent style of the whole file
set copyindent

" Be smart about indenting new lines
set smartindent

" copy the previous indentation on autoindenting
set shiftround

" Highlight matching parenthesis
set showmatch

" Search case-insensitive
set ignorecase

" No highlighting while searching
set nohlsearch

" Unless first character is uppercase
set smartcase

" Insert shiftwidth amount of spaces before a line
set smarttab

" Start searching while typing
set incsearch

" Remember 1000 commands
set history=1000

" Undo 1000 moves
set undolevels=1000

" Show suggestions in the menu
set wildmenu

set wildmode=list:longest

" Ignore these files when completing
set wildignore=*.swp,*.bak,*.pyc,*.exe

" Change terminal title to current file
set title

" Don't overwrite file permissions and systemlinks
set backupcopy=yes

" Refresh files if it changed from the outside
set autoread

" No sounds, ever
set visualbell
set noerrorbells

" Display some characters
set list
set listchars=tab:⦊·,trail:·,extends:#,nbsp:·

" Don't backup files, or use swap files, we have git
set nobackup

" No .swp files
set noswapfile

" Fold code
set foldenable
set foldmethod=indent
set foldlevel=99

" Use this for airline
set laststatus=2

" Clipboard as the default register
set clipboard=unnamed
let g:clipboard = {
  \ 'name': 'pbcopy',
  \ 'copy': {
  \    '+': 'pbcopy',
  \    '*': 'pbcopy',
  \  },
  \ 'paste': {
  \    '+': 'pbpaste',
  \    '*': 'pbpaste',
  \ },
  \ 'cache_enabled': 0,
  \ }

"enable mouse support
set mouse=a

set hidden

"Credit joshdick
"Use 24-bit (true-color) mode in Vim/Neovim when outside tmux.
"If you're using tmux version 2.2 or later, you can remove the outermost $TMUX check and use tmux's 24-bit color support
"(see < http://sunaku.github.io/tmux-24bit-color.html#usage > for more information.)
if (has("nvim"))
  "For Neovim 0.1.3 and 0.1.4 < https://github.com/neovim/neovim/pull/2198 >
  let $NVIM_TUI_ENABLE_TRUE_COLOR=1
endif
"For Neovim > 0.1.5 and Vim > patch 7.4.1799 < https://github.com/vim/vim/commit/61be73bb0f965a895bfb064ea3e55476ac175162 >
"Based on Vim patch 7.4.1770 (`guicolors` option) < https://github.com/vim/vim/commit/8a633e3427b47286869aa4b96f2bfc1fe65b25cd >
" < https://github.com/neovim/neovim/wiki/Following-HEAD#20160511 >
if (has("termguicolors"))
  set termguicolors
endif
set background=dark

colorscheme OceanicNext

au FileType rust nmap gd <Plug>(rust-def)
au FileType rust nmap gs <Plug>(rust-def-split)
au FileType rust nmap gx <Plug>(rust-def-vertical)
au FileType rust nmap <leader>gd <Plug>(rust-doc)
let g:move_key_modifier = 'C'

let g:ruby_host_prog = "~/.asdf/shims/ruby"
let g:python_host_prog = "~/.asdf/shims/python2.7"
let g:python3_host_prog = "~/.asdf/shims/python3.6"

let g:ale_completion_enabled = 1
