# Installation

- Clone this repository in your $HOME/.config/ directory 
- Link $HOME/.config/nvim folder to $HOME/.config/dev-config/nvim folder
- Install oh-my-tmux then link $HOME/.config/dev-config/tmux/.tmux.conf.local to $HOME/.tmux.conf.local
- Link $HOME/.config/dev-config/alacritty to ${HOME}/.config/alacritty


# Commands

```sh
git clone https://github.com/gpakosz/.tmux.git $HOME/.config/tmux
ln -s -f $HOME/.config/tmux/.tmux.conf ~/.tmux.conf
git clone https://github.com/DorianMaliszewski/dev-config.git $HOME/.config/dev-config
rm -rf $HOME/.config/nvim
rm -rf $HOME/.config/alacritty
rm -f $HOME/.tmux.conf.local
ln -s $HOME/.config/dev-config/nvim $HOME/.config/nvim
ln -s $HOME/.config/dev-config/alacritty $HOME/.config/alacritty
ln -s $HOME/.tmux.conf.local
```
