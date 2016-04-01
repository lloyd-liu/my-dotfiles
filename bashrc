
# Setting PATH for Python 3.5
# The orginal version is saved in .bash_profile.pysave
PATH="~/.composer/vendor/bin:/Library/Frameworks/Python.framework/Versions/3.5/bin:${PATH}"
export PATH

#tldr on dotfiles/bin
export PATH=~/dotfiles/bin:$PATH

export EDITOR=vim

export CLICOLOR=1
export LSCOLORS=gxBxhxDxfxhxhxhxhxcxcx
# export LSCOLORS="cgacadxfxcxdxbxegh"

#bash git prompt
export PS1="\u@\W \[$txtcyn\]\$git_branch\[$txtred\]\$git_dirty\[$txtrst\]\$ "
export GITAWAREPROMPT=~/dotfiles/git/git-aware-prompt
source "${GITAWAREPROMPT}/main.sh"

alias baidu='aria2c --conf-path=${HOME}/dotfiles/aria2.conf'
eval "$(chef shell-init bash)"

bind '"\e[3;5~":kill-word'
# set -o vi


#Add below on .bashrc and type "extract " to execute command
extract() {
  if [ -f $1 ] ; then
    case $1 in
      *.tar.bz2)   tar xjf $1     ;;
      *.tar.gz)    tar xzf $1     ;;
      *.bz2)       bunzip2 $1     ;;
      *.rar)       unrar e $1     ;;
      *.gz)        gunzip $1      ;;
      *.tar)       tar xf $1      ;;
      *.tbz2)      tar xjf $1     ;;
      *.tgz)       tar xzf $1     ;;
      *.zip)       unzip $1       ;;
      *.Z)         uncompress $1  ;;
      *.7z)        7z x $1        ;;
      *)     echo "'$1' cannot be extracted via extract()" ;;
    esac
  else
    echo "'$1' is not a valid file"
  fi
}


#Make yourself look busy and fancy in the eyes of non-technical stupid people

alias busy="cat /dev/urandom | hexdump -C | grep 'ca fe'"

# aliases  for dotfile config
[[ -f ~/.aliases ]] && source ~/.aliases

# git-autocompletion
# pre-step : brew install bash-completion
if [ -f `brew --prefix`/etc/bash_completion ]; then
      . `brew --prefix`/etc/bash_completion
    fi

[[ -f ~/.bashrc.local ]] && source ~/.bashrc.local

