
# Setting PATH for Python 3.5
# The orginal version is saved in .bash_profile.pysave
PATH="~/.composer/vendor/bin:/Library/Frameworks/Python.framework/Versions/3.5/bin:${PATH}"
export PATH

alias baidu='aria2c --conf-path=${HOME}/.aria2/aria2.conf'
eval "$(chef shell-init bash)"

# aliases  for dotfile config
[[ -f ~/.aliases ]] && source ~/.aliases

export PATH=~/bin:$PATH
