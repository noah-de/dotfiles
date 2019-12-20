export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="gnzh"
plugins=(git)

if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='vim'
else
  export EDITOR='mvim'
fi

source $ZSH/oh-my-zsh.sh

# git aliases
alias gs="git status"
alias gp="git pull"
alias gi="git info"
alias gd="git diff"


export WORKON_HOME=$HOME/envs
export PROJECT_HOME=$HOME/py_projects

eval "$(direnv hook bash)"

source /usr/share/virtualenvwrapper/virtualenvwrapper.sh
