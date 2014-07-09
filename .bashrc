alias ls="ls -G"
alias rm="rm -i"
alias cp="cp -i"
alias mv="mv -i"
alias du="du -k"

set -o vi

# gitの補完
source /opt/local/share/git/contrib/completion/git-completion.bash

# tmuxの補完
source ~/.dotfiles/bash_completion_tmux.sh
