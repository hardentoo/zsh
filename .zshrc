
if [ -e ~/.zgen/zgen/zgen.zsh ] ; then
	. ~/.zgen/zgen/zgen.zsh
fi

if ! zgen saved; then

    zgen oh-my-zsh

    # https://github.com/robbyrussell/oh-my-zsh/wiki/Plugins
    zgen oh-my-zsh plugins/command-not-found
    zgen oh-my-zsh plugins/colorize
    zgen oh-my-zsh plugins/docker
    zgen oh-my-zsh plugins/git
    zgen oh-my-zsh plugins/git-extras
    zgen oh-my-zsh plugins/gitignore
    zgen oh-my-zsh plugins/go
    zgen oh-my-zsh plugins/node
    zgen oh-my-zsh plugins/npm
    zgen oh-my-zsh plugins/pip
    zgen oh-my-zsh plugins/python
    zgen oh-my-zsh plugins/sudo
    zgen oh-my-zsh plugins/tmuxinator
    zgen oh-my-zsh plugins/urltools
    zgen oh-my-zsh plugins/vundle
    zgen oh-my-zsh plugins/web-search
    zgen oh-my-zsh plugins/z

    # https://github.com/Tarrasch/zsh-autoenv
    zgen load Tarrasch/zsh-autoenv
    
    # https://github.com/zsh-users
    zgen load zsh-users/zsh-completions src
    zgen load zsh-users/zsh-syntax-highlighting
    
    # Bug https://github.com/zsh-users/zsh-autosuggestions/issues/136
    #zgen load zsh-users/zsh-autosuggestions . develop

    # https://github.com/Treri/fzf-zsh
    #zgen load Treri/fzf-zsh

    # https://github.com/bhilburn/powerlevel9k
    #zgen load bhilburn/powerlevel9k powerlevel9k.zsh-theme

    zgen save
fi

if [ -e ~/.zsh/.prompt ] ; then
	. ~/.zsh/.prompt
fi

if [ -e ~/.zsh/.alias ] ; then
	. ~/.zsh/.alias
fi

if [ -e ~/.zsh/.config ] ; then
	. ~/.zsh/.config
fi

# Bug https://github.com/zsh-users/zsh-autosuggestions/issues/136
#ZSH_AUTOSUGGEST_BUFFER_MAX_SIZE=5
