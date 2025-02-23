## Install and configure ZSH

Install ZSH by following the instructions [here](https://wiki.archlinux.org/title/Zsh). 

```
# Install using package manager
sudo pacman -Syu zsh zsh-completions

# Run Zsh to do some initial configuration
zsh

# Set it as the default shell using chsh

# List all installed shells
chsh -l

# Set the default shell
chsh -s /full/path/to/shell
```

ZSH loads all configuration files from `$ZDOTDIR/`. This maps to `$HOME` by default. To set it to a custom location, we need to set the right value for `$ZDOTDIR`. The easiest way for us to do that is to create `~/.zshenv` and add the following content to it:

```
# Setting ZDOTDIR allows us to organise ZSH config files in a custom location

ZDOTDIR=~/.config/zsh

# We need to source our custom .zshenv file so that we don't miss any configuration
source -- "$ZDOTDIR"/.zshenv
```


## Package manager

Arch linux comes with Pacman as it's default package manager. Also consider installing [Paru](https://github.com/Morganamilo/paru) or [Yay](https://github.com/Jguer/yay), which are essentially wrappers over Pacman but provide some useful features like being able to search AUR packages.

## Terminal setup

### Fonts

Install your preferred [Nerd Font](https://www.nerdfonts.com). Consider Hasklig or Fira Code. You can also try other fonts at https://www.programmingfonts.org/

Installation instructions for Nerd Fonts is available on their [GitHub page](https://github.com/ryanoasis/nerd-fonts).

#### Install using Pacman

Nerd fonts are available as packages in the `extras` repository. For example, [Fira Code](https://archlinux.org/packages/extra/any/ttf-firacode-nerd/).

> sudo pacman -Syu ttf-firacode-nerd

### Setting up the terminal prompt

I recommend [Starship](https://github.com/starship/starship) for the prompt. Setup instructions are available on the [GitHub page](https://github.com/starship/starship), and config documentation is available on [their website](https://starship.rs/config/).

## Installing Rust

- Write about needing to create a stub for cargo

## Install Hyprland

Reference: https://wiki.archlinux.org/title/Hyprland

Installation instructions: https://wiki.hyprland.org/Getting-Started/Installation/

If using a Nvidia GPU, go through this page after the installation step: https://wiki.hyprland.org/Nvidia/

Don't forget to go through the [Must Haves](https://wiki.hyprland.org/Useful-Utilities/Must-have/) page for Hyprland.

```
sudo pacman -Syu hyprland qt5-wayland qt6-wayland xdg-desktop-portal-hyprland
```

