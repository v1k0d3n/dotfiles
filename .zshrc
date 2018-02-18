#
# Executes commands at the start of an interactive session.
#
# Authors:
#   Sorin Ionescu <sorin.ionescu@gmail.com>
#

# Source Prezto.
if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi

# Customize to your needs...
# Custom Source Files:
source /Users/$USER/.kube-ps1

# Taken from a great article here: http://www.joshuad.net/zshrc-config/
local ZSH_CONF=$HOME/.zsh                      # Define the place I store all my zsh config stuff
local ZSH_CACHE=$ZSH_CONF/cache                # for storing files like history and zcompdump
local LOCAL_ZSHRC=$HOME/.zshlocal/.zshrc       # Allow the local machine to have its own overriding zshrc if it wants it

## Custom Aliases:
alias vi="vim"
alias ls="ls --color=tty"
alias debug_go="dlv debug --headless --listen=:2345 --log"

# Set terminal colors per either type or extension:
eval $(/usr/local/opt/coreutils/libexec/gnubin/dircolors $HOME/.dircolors)

# Use GPG Key for any work submitted to GitHub, etc:
export GPG_TTY=$(tty)

## Custom development locations:
export GOPATH=/Users/$USER/projects/workspace
export GOROOT=/usr/local/go

# Save these for last:
## Updated MANPATH:
export MANPATH="/usr/local/opt/gnu-tar/libexec/gnuman:$MANPATH"

## Updated PATH:
export PATH="/Users/$USER/projects/sshuttle:/usr/local/opt/python/libexec/bin:/usr/local/opt/coreutils/libexec/gnubin:/usr/local/opt/gnu-tar/libexec/gnubin:/usr/local/go/bin/:/usr/local/opt/python/libexec/bin:$PATH"
