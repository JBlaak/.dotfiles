# Some colors and settings of those
RED="\[\e[0;31m\]"
GREEN="\[\e[0;32m\]"
YELLOW="\[\e[0;33m\]"
BLUE="\[\e[0;34m\]"
RESETCOLOR="\[\e[0m\]" 

export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagaced

# Styling the PS1 (prefix etc. showing current git branch)
export PS1="\n【ツ】${GREEN}\w\$([[ -n \$(git branch 2> /dev/null) ]] && echo \"  ${YELLOW}\")\$(parse_git_branch)\n${RESETCOLOR} → "


