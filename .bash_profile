alias ll='ls -alG'
alias ..='cd ..'
alias ...='cd ../..'

alias chrome="/Applications/Google\ Chrome.app/Contents/MacOS/Google\ Chrome"

set -o noclobber

# Verify substituted history expansion before running
shopt -s histverify

# Disable XOFF flow control so that Ctrl-s does forward history searching
stty -ixon

export FIGNORE='~' # A filename whose suffix  matches  one  of  the entries  in  FIGNORE is excluded from the list of matched filenames
export CDPATH=.:~/bitbucket

# neovim
mkdir -p ~/.vim
export VIMCONFIG=~/.vim
export EDITOR=nvim
export VIMDATA=~/.vim

export PROMPT_COMMAND="history -a; history -c; history -r; $PROMPT_COMMAND"

mkcd() { mkdir -p "$1"; cd "$1"; }

export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"

export PATH="/usr/local/opt/redis@3.2/bin:$PATH"
