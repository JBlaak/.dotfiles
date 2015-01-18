
# Git (not so serious)
alias wollah='git add . && git commit -am '
alias whoop='git monsterpull origin '
alias ga='git add .'
alias gs='git status'
alias gc='git commit -am'

# Artisan
alias art='php artisan --env=local'
alias gm='php artisan --env=local generate:migration'
alias artt='php artisan --env=testing'

# PHPUnit testing
alias rp='php artisan --env=testing migrate && php artisan --env=testing db:seed && phpunit --stop-on-error --stderr'

# Behat/selenium testing
alias behat='vendor/bin/behat'
alias servebehat='php artisan serve --host=behat.localhost'
alias rb='php artisan --env=testing migrate && php artisan --env=testing db:seed && grunt && vendor/bin/behat --verbose --stop-on-failure'
alias sb='php artisan serve --host=behat.localhost'

# Heroku
alias hlog='heroku logs --tail'

# Some locations
alias ..='cd ..'
alias ch='cd ~'
alias home='cd ~'
alias cdd='cd ~/Development'
alias cdown='cd ~/Downloads'

# Just handy
alias la='ls -a'

# Apt-get
alias uninstall='sudo apt-get remove'
alias install='sudo apt-get install'

# setting the default editor to Sublime
export EDITOR='subl -w'

# Some colors and settings of those
RED="\[\e[0;31m\]"
GREEN="\[\e[0;32m\]"
YELLOW="\[\e[0;33m\]"
BLUE="\[\e[0;34m\]"
RESETCOLOR="\[\e[0m\]" 

export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagaced

# Styling the PS1 (prefix etc. showing current git branch)
function parse_git_dirty() {
        [[ $(git status 2> /dev/null | tail -n1) != *"working directory clean"* ]] && echo "*"
}

function parse_git_branch() {
        git branch --no-color 2> /dev/null | sed -e '/^[^*]/d' -e "s/* \(.*\)/\1$(parse_git_dirty)/"
}

export PS1="\n 😈  ${BLUE}\w\$([[ -n \$(git branch 2> /dev/null) ]] && echo \"  ${YELLOW}\")\$(parse_git_branch)\n${RESETCOLOR}→ "

