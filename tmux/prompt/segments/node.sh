run_segment() {
  local tmux_path=$(get_tmux_cwd)
   cd "$tmux_path"
   echo $(nodenv version-name)
}
