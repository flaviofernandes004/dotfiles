set -g EDITOR nvim
set -g FZF_TMUX 1
set -U FZF_LEGACY_KEYBINDINGS 0

alias vi=nvim
alias reload_fish="source $HOME/.config/fish/config.fish"

#fish_vi_cursor
if not functions -q fisher
  set -q XDG_CONFIG_HOME; or set XDG_CONFIG_HOME ~/.config
  curl https://git.io/fisher --create-dirs -sLo $XDG_CONFIG_HOME/fish/functions/fisher.fish
  fish -c fisher
end

set -l current_location (dirname (status --current-filename))
# Load the personal configuration that are stored in ./configuration
for config_file in (find $current_location/configuration -type f -maxdepth 1)
    source $config_file
end

