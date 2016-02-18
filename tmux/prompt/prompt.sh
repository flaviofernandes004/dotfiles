#!/usr/bin/env bash

export TMUX_POWERLINE_DIR_HOME="$(dirname $0)"
source "${TMUX_POWERLINE_DIR_HOME}/config.sh"

print_powerline() {
# The format of the segments is:

# segment "segment_file_name" foreground background min_pane_width
# double_segment "label" fg bg "segment_filename" fg bg min_pane_width

# If the required PANE_WIDTH isn't met then the segment will be
# hidden
# double_segment "♫" brightblack blue "now_playing" blue brightblack 143
# double_segment "js" brightblack yellow "node" yellow brightblack 100
# double_segment "rb" brightblack red "ruby" red brightblack 50
double_segment "rust" brightblack red "rust" red brightblack 50
double_segment "" brightblack brightred "vcs_branch" brightred brightblack 50
segment "vcs_compare" black black  50 #this is kind of a hack need to refactor 50
double_segment "⊕" brightblack green "vcs_staged" green brightblack 50
double_segment "+" brightblack yellow "vcs_modified" yellow brightblack 50
double_segment "○" brightblack white "vcs_others" white brightblack 50
exit 0
}

print_powerline "$1"
