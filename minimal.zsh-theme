# Minimal + kami.zsh-theme
# https://github.com/kamilkonefke/config/blob/master/kamii.zsh-theme

function git_branch() {
  local branch
  branch=$(git symbolic-ref --short HEAD 2>/dev/null)
  if [[ -n $branch ]]; then
    echo "%F{#fc6203}(git:$branch)%f"
  fi
}

PROMPT='%2~ $(git_branch)»%b '
