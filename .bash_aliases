# enable color support of ls and also add handy aliases
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls='ls --color=auto'
    #alias dir='dir --color=auto'
    #alias vdir='vdir --color=auto'

    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
fi

# Add an "alert" alias for long running commands.  Use like so:
#   sleep 10; alert
alias alert='notify-send --urgency=low -i "$([ $? = 0 ] && echo terminal || echo error)" "$(history|tail -n1|sed -e '\''s/^\s*[0-9]\+\s*//;s/[;&|]\s*alert$//'\'')"'

# some more ls aliases
alias ll='ls -alFh'
alias la='ls -Ah'
alias l='ls -CF'

# User defined aliases
alias apa="sudo service apache2 start"
alias apas="sudo service apache2 stop"
alias apar="sudo service apache2 restart"
alias 42f="cd ~/www/42framework && git status"
alias 42F="42f"
alias hub="cd ~/www/hubvioos/ && git status"
alias gits="git status"
alias gitc="git commit"
alias gitb="git branch"
alias gita="git add"
alias gitcc="git checkout"
alias gitd="git diff"
alias gitds="git diff --staged"
alias gitl="git log"
alias gitw="git whatchanged"
alias upd="sudo apt-get update"
alias upg="sudo apt-get upgrade"
if [ -f ~/.bash_tmp_aliases ]; then
    . ~/.bash_tmp_aliases
fi
