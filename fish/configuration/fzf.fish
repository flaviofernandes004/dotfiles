# --files: List files that would be searched but do not search
# --no-ignore: Do not respect .gitignore, etc...
# --hidden: Search hidden files and folders
# --follow: Follow symlinks
# --glob: Additional conditions for search (in this case ignore everything in the .git/ folder)
set -g FZF_LEGACY_KEYBINDINGS 0

set -g FZF_FIND_FILE_COMMAND 'fd --type file --follow --hidden --exclude .git --exclude node_modules --color=always'

set -g FZF_DEFAULT_OPTS "--ansi"

set -g FZF_CD_COMMAND 'fd --type directory --follow --hidden --exclude .git --exclude node_modules --color=always'
