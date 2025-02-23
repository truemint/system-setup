# Lines configured by zsh-newuser-install
HISTFILE=~/.zsh/histfile
HISTSIZE=1000
SAVEHIST=1000
bindkey -v
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/truemint/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

# Configuring Starship prompt
eval "$(starship init zsh)"

