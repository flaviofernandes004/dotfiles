#!/bin/sh
function _git_fixup () {
  git log --oneline --decorate --boundary master.. | fzf | cut -f 1 | xargs git commit --no-verify --fixup
}
