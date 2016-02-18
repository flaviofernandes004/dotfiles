let g:ale_fixers = { 
      \ 'javascript': ['eslint'], 
      \ 'rust': ['rustfmt'],  
      \ 'python':['autopep8','yapf'],  
      \ 'go': ['gofmt', 'goimports'],
      \}

let g:ale_linters = {
      \'rust': ['rls'], 
      \'python': ['flake8', 'pylint'], 
      \'vim': ['vint'], 
      \'md': ['alex', 'proselint'. 'write-good'], 
      \'txt': ['alex','proselint', 'write-good']
      \}
"      \'go': ['golangci-lint'], 

let g:ale_rust_rls_config = { 'rust': { 'clippy_preference': 'on' } }

let g:ale_fix_on_save = 1
" Enable completion where available.
" This setting must be set before ALE is loaded.
let g:ale_completion_enabled = 1
" keep the sign gutter open at all times
let g:ale_sign_column_always = 1
" Set this. Airline will handle the rest.
let g:airline#extensions#ale#enabled = 1

nmap <silent> <C-n> <Plug>(ale_previous_wrap)
nmap <silent> <C-p> <Plug>(ale_next_wrap)

" Write this in your vimrc file
" let g:ale_set_loclist = 0
" let g:ale_set_quickfix = 1

" let g:ale_open_list = 0
" Set this if you want to.
" This can be useful if you are combining ALE with
" some other plugin which sets quickfix errors, etc.
" let g:ale_keep_list_window_open = 1
"
" Show 5 lines of errors (default: 10)
let g:ale_list_window_size = 3
let g:ale_completion_enabled = 1
let g:ale_rust_cargo_use_clippy = 1
let g:ale_rust_rls_toolchain = "/Users/flaviofernandes/.asdf/shims/rls"
let g:ale_rust_rls_toolchain = "stable"
