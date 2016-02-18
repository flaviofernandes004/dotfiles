run_segment() {
  local tmux_path=$(get_tmux_cwd)
  local cargo_file="$tmux_path/Cargo.toml"
  if [ -f $cargo_file ]; then
    cd "$tmux_path"
    echo "$(rustc --version | awk '{print $2 }')"
  else
    echo ""
  fi
}
