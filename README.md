# dotfiles

My personal configuration files for unix environments.

## Contents

| File/Dir | Description |
|----------|-------------|
| `.nvim/` | Neovim configuration |
| `.zshrc` | Zsh shell configuration, aliases, and environment variables |
| `.gitconfig` | Git identity, aliases, and preferences |

## Requirements

- [`neovim`](https://neovim.io/) - text editor
- [`zsh`](https://www.zsh.org/) - the z shell
- `git`

## Installation

```bash
sudo dnf install neovim
sudo dnf install zsh

cp -r .nvim ~/.config/
cp -r .gitconfig ~/
```

## Notes

- Configurations are opinionated and tailored to my workflow.
- Tested on Fedora 44 Workstation.

## License

Feel free to modify these and use them as you see it.

