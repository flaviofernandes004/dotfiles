alias gitgraph="git log --graph --oneline --all --decorate --topo-order --source" 
alias fix='git diff --name-only | uniq | xargs $EDITOR'

set -l new_path /usr/local/opt/git/bin
set -l custom_bin $HOME/.config/git/bin
set PATH $new_path $PATH
set PATH $custom_bin $PATH
