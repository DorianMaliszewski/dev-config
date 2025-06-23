# Dev config

<!--toc:start-->
- [Dev config](#dev-config)
  - [Prerequisite](#prerequisite)
  - [Commands](#commands)
  - [Next steps](#next-steps)
<!--toc:end-->

## Prerequisite

- ZSH + OH-MY-ZSH
- TMUX + oh-my-tmux
- NVIM
- GHOSTTY

## Commands

```sh
git clone https://github.com/gpakosz/.tmux.git $HOME/.config/tmux
ln -s -f $HOME/.config/tmux/.tmux.conf ~/.tmux.conf
git clone https://github.com/DorianMaliszewski/dev-config.git $HOME/.config/dev-config
rm -rf $HOME/.config/nvim
rm -rf $HOME/.config/ghostty
rm -f $HOME/.tmux.conf.local
ln -s $HOME/.config/dev-config/nvim $HOME/.config/nvim
ln -s $HOME/.config/dev-config/ghostty $HOME/.config/ghostty
ln -s $HOME/.config/dev-config/tmux.conf.local $HOME/.tmux.conf.local
```

## Next steps

- Open `nvim` it will trigger updates
