# dotfiles

My personal configuration files for unix environments.

## Contents

| File/Dir | Description |
|----------|-------------|
| `nvim/` | Neovim configuration |
| `.zshrc` | Zsh shell configuration, aliases, and environment variables |
| `.gitconfig` | Git identity, aliases, and preferences |
| `.tmux.conf` | Tmux configuration |

## Requirements

- [`neovim`](https://neovim.io/) - text editor
- [`zsh`](https://www.zsh.org/) - the Z shell
- [`tmux`](https://github.com/tmux/tmux) - terminal multiplexer
- [`git`](https://git-scm.com) - the stupid content tracker

## Installation

Run the following commands to get started.

```bash
sudo dnf install neovim zsh tmux git

ln -sf "$PWD/nvim" ~/.config/nvim
ln -sf "$PWD/.zshrc" ~/.zshrc
ln -sf "$PWD/.gitconfig" ~/.gitconfig
ln -sf "$PWD/.tmux.conf" ~/.tmux.conf
```

## Notes

- Configurations are opinionated and tailored to my workflow.
- Tested on Fedora 44 Workstation.

## License

Feel free to modify these and use them as you see fit.

