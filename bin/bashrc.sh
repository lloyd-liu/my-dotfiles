# ~/.bashrc: executed by bash(1) for non-login shells.
# see /usr/share/doc/bash/examples/startup-files (in the package bash-doc)
# for examples

# If not running interactively, don't do anything
case $- in
  *i*) ;;
  *) return;;
esac

# don't put duplicate lines or lines starting with space in the history.
# See bash(1) for more options
HISTCONTROL=ignoreboth

# append to the history file, don't overwrite it
shopt -s histappend

# for setting history length see HISTSIZE and HISTFILESIZE in bash(1)
HISTSIZE=1000
HISTFILESIZE=2000

if [ -x /bin/shopt ]; then
  # check the window size after each command and, if necessary,
  # update the values of LINES and COLUMNS.
  shopt -s checkwinsize

  # If set, the pattern "**" used in a pathname expansion context will
  # match all files and zero or more directories and subdirectories.
  shopt -s globstar
fi


# make less more friendly for non-text input files, see lesspipe(1)
[ -x /usr/bin/lesspipe ] && eval "$(SHELL=/bin/sh lesspipe)"

# enable color support of ls and also add handy aliases
if [ -x /usr/bin/dircolors ]; then
  test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
  alias ls='ls --color=auto'
  alias grep='grep --color=auto'
  alias fgrep='fgrep --color=auto'
  alias egrep='egrep --color=auto'
fi

# if .bash_aliases exist source it
if [ -f ~/.bash_aliases ]; then
  . ~/.bash_aliases
fi

# colored GCC warnings and errors
export GCC_COLORS='error=01;31:warning=01;35:note=01;36:caret=01;32:locus=01:quote=01'

# Set terminal prompt
#export PS1="\[\e[00;37m\][\[\e[0m\]\[\e[01;36m\]\w\[\e[0m\]\[\e[00;37m\]]-> \[\e[0m\]"
#export PS1="\[\e[01;32m\]\u\[\e[0m\]\[\e[01;37m\]@\[\e[01;35m\]\H\[\e[0m\]\[\e[0m\]\[\e[00;37m\]:\[\e[0m\]\[\e[01;36m\]\W\[\e[0m\]\[\e[00;37m\]:-> \[\e[0m\]"
# This is a simple, clean PS1 with current git branch displayed.
function parse_git_branch () {
git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
                                                            }

                                                            WHITE="\[\033[1;37m\]"
                                                            CYAN="\[\033[1;36m\]"
                                                            ORANGE="\[\033[1;33m\]"
                                                            NO_COLOUR="\[\033[0m\]"
                                                            GREEN="\[\033[1;32m\]"
                                                            PS1="$GREEN\w$ORANGE\$(parse_git_branch)$CYAN λ $WHITE> $NO_COLOUR"

                                                            # Golang Specific variables
                                                            export GOPATH=$HOME/projects/go
                                                            export GOBIN=$GOPATH/bin

                                                            # My custom variables
                                                            export HMBIN="~/.bin"
                                                            export EDITOR="/usr/bin/vim"
                                                            export MANPATH="$HOME/.linuxbrew/share/man:$MANPATH"
                                                            export INFOPATH="$HOME/.linuxbrew/share/info:$INFOPATH"
                                                            export TERM=xterm-256color
                                                            export LANG=en_US.UTF-8

                                                            # Start emacs daemon
                                                            EMACS_IS_RUNNING=$(pidof emacs)
                                                            if [[ $EMACS_IS_RUNNING == "" ]]; then
                                                              emacs --daemon
                                                            fi

                                                            # Add to path
                                                            export PATH=$HOME/.linuxbrew/bin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:$HMBIN:$GOBIN

                                                          fi
                                                        fi
                                                      fi
                                                    fi
                                                esac
