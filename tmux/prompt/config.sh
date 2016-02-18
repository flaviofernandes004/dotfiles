#!/usr/bin/env bash

export TMUX_POWERLINE_DIR_SEGMENTS="${TMUX_POWERLINE_DIR_HOME}/segments"

get_pane_width() {
	local tmux_path=$(get_tmux_cwd)
  local sessionId=$(tmux display-message -p "#S")
  local pane_width="$(tmux display-message -p -t $sessionId '#{pane_width}')"
  local TMUX_PANE_WIDTH=0

  if [ -n "$(git symbolic-ref HEAD 2> /dev/null)" ]; then
    TMUX_PANE_WIDTH=$(($pane_width-30))
  else
    TMUX_PANE_WIDTH=$pane_width
  fi
  echo "$TMUX_PANE_WIDTH"
}

# Get the current path in the segment.
get_tmux_cwd() {
  echo "$(tmux display-message -p '#{pane_current_path}')"
}

# This function creates the actual segment
segment() {
  local segment="$1"
  local foreground="$2"
  local background="$3"
  local autohide="$4"

  source "${TMUX_POWERLINE_DIR_HOME}/segments/${segment}.sh"
  local result=$(run_segment)

  local output="#[fg=${foreground}, bg=${background}, noreverse]${result}"

  local exit_code="$?"
  unset -f run_segment

  if [ "$exit_code" -ne 0 ]; then
    echo "Segment '${segment_name}' exited with code ${exit_code}. Aborting."
    exit 1
  fi
  local TMUX_PANE_WIDTH=$(get_pane_width)
  # don't show output if the result is empty
  # or if the screen is small and has autohide enabled
  if [ $TMUX_PANE_WIDTH -lt $4 ]; then
    local display="hidden"
  fi

  if [[ -z "${result// }" || $display == "hidden" ]]; then
    echo -n ""
  else
    echo -n "#[fg=black, bg=black] "
    echo -n "${output}"
  fi
}

double_segment() {
  local label="$1"
  local label_fg="$2"
  local label_bg="$3"

  local segment="$4"
  local seg_fg="$5"
  local seg_bg="$6"

  local output="#[fg=${label_fg}, bg=${label_bg}, noreverse] ${label} "

  source "${TMUX_POWERLINE_DIR_HOME}/segments/${segment}.sh"
  local result=$(run_segment)

  output="${output}#[fg=${seg_fg}, bg=${seg_bg}, noreverse] ${result} "

  local exit_code="$?"
  unset -f run_segment

  # Show error when exit code != 0
  if [ "$exit_code" -ne 0 ]; then
    echo "Segment '${segment_name}' exited with code ${exit_code}. Aborting."
    exit S
  fi

  # don't show output if the result is empty
  # or if the screen is small and has autohide enabled

  local TMUX_PANE_WIDTH=$(get_pane_width)
  if [ $TMUX_PANE_WIDTH -lt $7 ]; then
    local display="hidden"
  fi

  if [[ -z "${result// }" || $display == "hidden" ]]; then
    echo -n ""
  else
    echo -n "#[fg=black, bg=black] "
    echo -n "${output}"
  fi
}
