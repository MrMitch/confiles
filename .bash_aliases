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
alias gitll="git log --graph --abbrev-commit --decorate --format=format:'%C(bold blue)%h%C(reset) - %C(bold green)(%ci)%C(reset) %C(white)%s%C(reset) %C(dim white)- %an%C(reset)%C(bold yellow)%d%C(reset)'"
alias gitt="git tag -l --sort=v:refname"
alias gl="git log --oneline --all --graph --decorate  $*"
alias gpt="git push origin master --tags"

alias upd="sudo apt-get update"
alias upg="sudo apt-get upgrade"
alias serve="python -m SimpleHTTPServer"

symc() { `test -x app/console && echo -n 'app' || echo -n 'bin'`/console "$@"; }

alias symass="symc asset:install --symlink"
alias symrun="symc server:run"
alias symdbu="symc doctrine:schema:update --force"
alias symdbd="symc doctrine:schema:drop --force"
alias symdbreset="symc('doctrine:schema:drop --force') && symc('doctrine:schema:update --force')"
alias symgen="symc doctrine:generate:entity" 
alias symgens="symc doctrine:generate:entities"
alias symacl="sudo setfacl -R -m u:www-data:rwX -m u:`whoami`:rwX var && sudo setfacl -dR -m u:www-data:rwX -m u:`whoami`:rwX var"
alias symprod="symc cache:clear --env=prod && symc server:run --env=prod && xdg-open http://127.0.0.1:8000"

#alias phpstorm="`grep Exec ~/.local/share/applications/jetbrains-phpstorm.desktop | cut -d'\"' -f2`"
alias e.='nautilus `pwd` &> /dev/null'
if [ -f ~/.bash_tmp_aliases ]; then
    . ~/.bash_tmp_aliases
fi
