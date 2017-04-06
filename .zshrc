
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

    zgen oh-my-zsh plugins/tmux
    zgen oh-my-zsh plugins/pass
    zgen oh-my-zsh plugins/gpg-agent
    zgen oh-my-zsh plugins/common-aliases 

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

    #zgen load KuoE0/oh-my-zsh-solarized-powerline-theme solarized-powerline.zsh-theme
    #zgen load jeremyFreeAgent/oh-my-zsh-powerline-theme powerline.zsh-theme
    #zgen load carlcarl/powerline-zsh	

    zgen save
fi

if [ -e ~/.zsh/.prompt ] ; then
	. ~/.zsh/.prompt
fi

if [ -e ~/.zsh/.export ] ; then
	. ~/.zsh/.export
fi

if [ -e ~/.zsh/.alias ] ; then
	. ~/.zsh/.alias
fi

if [ -e ~/.zsh/.alias_local ] ; then
	. ~/.zsh/.alias_local
fi

if [ -e ~/.zsh/.config ] ; then
	. ~/.zsh/.config
fi

# Bug https://github.com/zsh-users/zsh-autosuggestions/issues/136
ZSH_AUTOSUGGEST_BUFFER_MAX_SIZE=5

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
