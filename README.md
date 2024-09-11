## My personal dotfiles
After some time i finally decided to set up my own dotfiles so that i can easily get my config files on each pc i use. So here is my simple setup:
![alt text](https://github.com/[nilswag]/[dotfiles]/blob/[main]/screenshot.png?raw=true)


## Features
**Neovim**

 - [x] Custom colorscheme
 - [x] Lualine plugin
 - [x] Treesitter syntax highlighting
 - [x] Custom keybinds
 - [x] Tmux integration
 - [ ] LSP

**Tmux**
 - [x] Custom colorscheme
 - [x] Neovim integration
 - [x] Basic custom keybinds

**zsh**
 - [x] Zinit plugin manager
 - [x] Syntax highlighting
 - [x] Command completions
 - [x] Autosuggestions
 - [x] Basic custom keybinds
 - [x] Command history
 - [x] Powerlevel10k prompt

## Installation
**Prerequisites**
Before you use my dotfiles make sure to have the following packages installed:
 - `git`
 - `zsh`
 - `tmux`
 - `neovim`
 - `stow`
 - `gcc`
 
*Using `apt` as an example:*
`$ sudo apt update && sudo apt upgrade -y`
`$ sudo apt install git zsh tmux neovim stow gcc -y`
## 
Run this:
`$ git clone --recursive git@github.com:nilswag/dotfiles.git ~/.dotfiles && cd ~/.dotfiles`
This will clone the dotfiles repo into the `~/.dotfiles` directory and will `cd` into it.
 Running `$ stow */` will make sure that the dotfiles are symlinked and copied to the respecting directories in `~/.config` and just in your home directory.

After running these commands you should either run `$ source ~/.zshrc` or re-open your terminal, after this you will see the powerlevel10k prompt setup starting, after configuring your prompt you're good to go!
## 
**Resources used:**
 - [[This Zsh config is perhaps my favorite one yet.]](https://www.youtube.com/watch?v=ud7YxC33Z3w&t=918s) *by Dreams of Autonomy*
 - [[Neovim for News.]](https://www.youtube.com/playlist?list=PLsz00TDipIffreIaUNk64KxTIkQaGguqn) *by Typecraft*
 - [LunarVim/LunarVim](https://github.com/LunarVim/LunarVim) *on GitHub*
 - [chris@machine](https://www.youtube.com/@chrisatmachine) *on YouTube*
 - [[Making Tmux Better AND Beautiful]](https://www.youtube.com/watch?v=jaI3Hcw-ZaA&t=65s) *by Typecraft*

