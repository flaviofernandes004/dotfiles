" - down / up / left / right
let g:fzf_layout = { 'down': '~30%' }

" In Neovim, you can set up fzf window using a Vim command

let g:fzf_action = {
      \ 'ctrl-t': 'tab split',
      \ 'ctrl-x': 'split',
      \ 'ctrl-v': 'vsplit' }

" Customize fzf colors to match your color scheme
let g:fzf_colors = {
      \ 'fg': ['fg', 'Normal'],
      \ 'bg':      ['bg', 'Normal'],
      \ 'hl':      ['fg', 'Comment'],
      \ 'fg+':     ['fg', 'CursorLine', 'CursorColumn', 'Normal'],
      \ 'bg+':     ['bg', 'CursorLine', 'CursorColumn'],
      \ 'hl+':     ['fg', 'Statement'],
      \ 'info':    ['fg', 'PreProc'],
      \ 'prompt':  ['fg', 'Conditional'],
      \ 'pointer': ['fg', 'Exception'],
      \ 'marker':  ['fg', 'Keyword'],
      \ 'spinner': ['fg', 'Label'],
      \ 'header':  ['fg', 'Comment'],
      \}

" Open files in horizontal split
" nnoremap <silent> <D-x> :FZF<CR>
"start in fullscreen mode by appending !
nnoremap <silent> <A-f> :FZF<CR>
nnoremap <silent> <A-b> :Buffers<CR>
nnoremap <silent> <A-w> :Windows<CR>
nnoremap <silent> <A-l> :BLines<CR>
nnoremap <silent> <A-L> :Lines<CR>
nnoremap <silent> <A-t> :BTags<CR>
nnoremap <silent> <A-T> :Tags<CR>
nnoremap <silent> <A-h> :History<CR>
nnoremap <silent> <A-r> :Rg<CR>
nnoremap <silent> <A-e> :Commands<CR>
nnoremap <silent> <A-g>c :BCommits!<CR>
nnoremap <silent> <A-g>C :Commits!<CR>
nnoremap <silent> <A-g>f :GFiles!<CR>
nnoremap <silent> <A-g>s :GFiles?!<CR>
