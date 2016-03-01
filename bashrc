
# Setting PATH for Python 3.5
# The orginal version is saved in .bash_profile.pysave
PATH="~/.composer/vendor/bin:/Library/Frameworks/Python.framework/Versions/3.5/bin:${PATH}"
export PATH

export EDITOR=vim

export CLICOLOR=1
export LSCOLORS=gxBxhxDxfxhxhxhxhxcxcx
# export LSCOLORS="cgacadxfxcxdxbxegh"

alias baidu='aria2c --conf-path=${HOME}/.aria2/aria2.conf'
eval "$(chef shell-init bash)"


# set -o vi

# aliases  for dotfile config
[[ -f ~/.aliases ]] && source ~/.aliases
