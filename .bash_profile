function EXT_COLOR () { echo -ne "\e[38;5;$1m"; }
function CLOSE_COLOR () { echo -ne '\e[m'; }

alias ll="ls -la"
alias gti="git"
alias gs="git status"
alias ls="ls -lhtFG"

# prompt to show colorized user and location
export PS1="\[`EXT_COLOR 203`\]\u\[`CLOSE_COLOR`\]@\[`EXT_COLOR 208`\]\H\[`CLOSE_COLOR`\]:\[`EXT_COLOR 148`\]\w\[`CLOSE_COLOR`\]\$ "

# silly prompt, shows the return value of the last command
# PS1="\$? \$(if [[ \$? == 0 ]]; then echo \"\[\033[0;32m\];)\"; else echo \"\[\033[0;31m\];(\"; fi)\[\033[00m\] : "

export PATH=/usr/local/bin:$PATH

# Setting PATH for Python 3.4
PATH="/Library/Frameworks/Python.framework/Versions/3.4/bin:${PATH}"
export PATH
export PATH=/opt/bro/bin/:$PATH
