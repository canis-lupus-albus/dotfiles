alias ls="ls -FG"
alias rm="rm -i"
alias cp="cp -i"
alias mv="mv -i"
alias du="du -k"
alias ag="ag --pager 'less -R'"

#set -o vi

# gitの補完
if [ -f /opt/local/share/git/contrib/completion/git-completion.bash ]
then
	source /opt/local/share/git/contrib/completion/git-completion.bash
fi

# tmuxの補完
if [ -f ~/.dotfiles/bash_completion_tmux.sh ]
then
	source ~/.dotfiles/bash_completion_tmux.sh
fi
