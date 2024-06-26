if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
	alias ls='ls --color=auto'
	alias grep='grep --color=auto'
	alias fgrep='fgrep --color=auto'
	alias egrep='egrep --color=auto'
fi

alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'
alias vi=vim
alias less='/usr/share/vim/vim82/macros/less.sh'
alias git=hub
alias gitpp="git pull --rebase && git push"
alias gitst="git status -sb"
alias gitlg="git log --color --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit"
alias gitcl="git clean -fdX"
alias gitlgl="git log --stat --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --graph --abbrev-commit"
alias gitpr="git pull --rebase --autostash"
alias cat=bat
alias sagi="sudo apt-get install -y"
alias sagu="sudo apt-get update"


