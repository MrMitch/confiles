# enable color support of ls and also add handy aliases
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls='ls --color=always'
    #alias dir='dir --color=auto'
    #alias vdir='vdir --color=auto'
    alias less='less -R'
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
alias disx="sudo sh -c 'php5dismod xdebug && service apache2 reload'"
alias enx="sudo sh -c 'php5enmod xdebug && service apache2 reload'"
# git aliases
alias gits="git status"
alias gitc="git commit"
alias gitb="git branch -vv"
alias gita="git add"
alias gitcc="git checkout"
alias gitd="git diff"
alias gitds="git diff --staged"
alias gitl="git log"
alias gitw="git whatchanged"
alias gitll="git log --graph --abbrev-commit --decorate --date=relative --format=format:'%C(bold blue)%h%C(reset) - %C(bold green)(%ar)%C(reset) %C(white)%s%C(reset) %C(dim white)- %an%C(reset)%C(bold yellow)%d%C(reset)'"
alias gl="git log --oneline --all --graph --decorate  $*"

alias upd="sudo apt-get update"
alias upg="sudo apt-get upgrade"
alias serve="python -m SimpleHTTPServer"

alias symass="php app/console asset:install --symlink"
alias symrun="php app/console server:run"
alias symdbu="php app/console doctrine:schema:update --force"
alias symgen="php app/console doctrine:generate:entity" 
alias symgens="php app/console doctrine:generate:entities"
alias symacl="sudo setfacl -R -m u:www-data:rwX -m u:`whoami`:rwX app/cache app/logs && sudo setfacl -dR -m u:www-data:rwX -m u:`whoami`:rwX app/cache app/logs"

alias phpstorm="`grep Exec ~/.local/share/applications/jetbrains-phpstorm.desktop | cut -d'\"' -f2`"

if [ -f ~/.bash_tmp_aliases ]; then
    . ~/.bash_tmp_aliases
fi

eval "$(thefuck --alias)"
