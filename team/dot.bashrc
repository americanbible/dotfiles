echo 'Running ~/.bashrc.'

function parse_git_dirty {
  git diff --no-ext-diff --quiet --exit-code &> /dev/null || echo "*"
}

function parse_git_branch {
  git branch --no-color 2> /dev/null | sed -e '/^[^*]/d' -e "s/* \(.*\)/(\1$(parse_git_dirty))/"
}

function source_if_exists {
  [[ -s $1 ]] && source $1
}

export CLICOLOR=1
export EDITOR='vim -f'

export PS1="\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;36m\]\w\[\033[00m\]\$(parse_git_branch)\$ "

alias ll='ls -lFG'
alias la='ls -aFG'
alias lla='ls -laFG'
alias ls='ls -FG'
alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8
export LANGUAGE=en_US.UTF-8
export LC_CTYPE=UTF-8

source ~/aliases.txt

# source extra user configurations if they exists (user paths, aliases, etc.)
source_if_exists "$HOME/.bashrc_local"
source_if_exists "$HOME/aliases_local.txt"

# source common tools if they exist
source_if_exists "$HOME/.rvm/scripts/rvm"
source_if_exists "$HOME/.nvm/nvm.sh"

