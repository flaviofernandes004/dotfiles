#!/usr/local/bin/bash

prefix="[DOTFILES]"

function log() {
  echo "$prefix $1"
}

log "Checking if Brew is installed"
if ! which brew > /dev/null; then
  log "Installing Brew"
  /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
  log "Installed Brew"
fi;

log "Updating brew"
brew update

log "Upgrading brew"
brew upgrade

log "Installing formulas"
brew bundle --file=$HOME/.config/Brewfile

if [ ! -L $HOME/.tmux ]; then
  log "Creating an alias for tmux folder"
  ln -s  $HOME/.config/tmux $HOME/.tmux
fi;

if [ ! -L $HOME/.tmux.conf ]; then
  log "Creating an alias for tmux.conf file"
  ln -s  $HOME/.config/tmux/tmux.conf $HOME/.tmux.conf
fi;

NAMESPACE=personal
if [ ! -L $HOME/.secrets.fish ]; then
  log "Creating an alias for secrets' file" 
  read -p "Namespace: " namespace
  keybase_username=flaviofernandes
  secrets_source_path="/keybase/private/$keybase_username/$NAMESPACE/security/secrets.fish"
  ln -s $secrets_source_path $HOME/.secrets.fish
  log "Created an alias for $secrets_source_path"
fi;

# asdf
declare -A langs

langs[nodejs]="12.12.0"
langs[python]="3.6.0 2.7.13"
langs[ruby]="2.6.5"
langs[golang]="1.13"
langs[rust]="stable"
langs[java]="adopt-openjdk-12.0.2+10.2"

for lang in "${!langs[@]}"; do 
  version=${langs[$lang]}
  log "Installing language $lang $version"
  asdf plugin-add $lang
  asdf install $lang $version
  asdf global $lang $version
done

log "asdf reshim"
asdf reshim

# Pip
log "Setting up pip"
pip install --upgrade pip
pip3 install --upgrade pip

# npm
log "Setting up npm"
npm install -g npm

# gem
log "Setting up gem"
gem update --system

# Neovim integration
log "Setting up neovim"

pip install neovim
pip install --upgrade neovim

pip3 install neovim
pip3 install --upgrade neovim

gem install neovim
gem update neovim

npm install -g neovim

nvim +UpdateRemotePlugins +PlugClean! +PlugUpgrade +PlugInstall! +PlugUpdate! +qall!
