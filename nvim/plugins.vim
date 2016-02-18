" Plugins
" --------------------
call plug#begin()
"Themes
Plug 'mhartington/oceanic-next'
Plug 'chriskempson/vim-tomorrow-theme'
Plug 'arcticicestudio/nord-vim'
"Status Bar
Plug 'bling/vim-airline'
" Syntax support for several langs
Plug 'sheerun/vim-polyglot'
"Code formating
Plug 'Chiel92/vim-autoformat'
"Fast Fuzzy searcher
Plug 'junegunn/fzf'
Plug 'junegunn/fzf.vim'
"Git
Plug 'tpope/vim-fugitive'
"Comment blocks of code
Plug 'tpope/vim-commentary'
"Tmux
Plug 'christoomey/vim-tmux-navigator'
"Writing
Plug 'davidbeckingsale/writegood.vim' , { 'for': 'markdown' }
"Move code around
Plug 'matze/vim-move'
"Asynchronous linting/fixing for Vim and Language Server Protocol (LSP) integration
Plug 'w0rp/ale'
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'deoplete-plugins/deoplete-jedi'
Plug 'deoplete-plugins/deoplete-go', { 'do': 'make'}

Plug 'tpope/vim-surround'
Plug 'godlygeek/tabular'
Plug 'plasticboy/vim-markdown'
Plug 'mzlogin/vim-markdown-toc'
Plug 'connorholyday/vim-snazzy'

call plug#end()
