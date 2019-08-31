## Enable timestamps in terminal history
export HISTTIMEFORMAT="%d/%m/%y %T "
export HISTSIZE=10000
export HISTFILESIZE=20000

## Define default editor
export EDITOR="vim"
export VISUAL="vim"

## Navigation
alias cdd="cd ~/Downloads/"
alias cddoc="cd ~/Documents/"
alias cddesk="cd ~/Desktop/"
alias open="xdg-open"


## git
alias ga="git add"
alias gd="git diff"
alias gst="git status"
alias gcmsg="git commit -m"
alias gco="git checkout"
alias gp="git push"

## misc
alias cclip="xclip -selection clipboard"
alias vclip="xclip -selection c -o"
alias dps="docker ps"
alias tls="tmux ls"

# Terminal prompt appearance
# Example: "13:13:31 ~ >"
export PS1="\[\e[0;36m\]\t \[\e[0;36m\]\W \[\e[0;37m\]> \[\e[0m\]"
