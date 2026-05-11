#!/bin/bash
 
echo "========================================"
echo "  dotfiles installer"
echo "  by xmfdev"
echo "========================================"
echo ""
 
echo "[*] installing packages..."
sudo dnf install neovim zsh tmux git fzf fd-find bat eza git-delta -y
echo "[+] packages installed."
echo ""
 
echo "[*] linking dotfiles..."
rm -rf ~/.config/nvim
ln -sf "$PWD/nvim" ~/.config/nvim && echo "[+] nvim linked."
ln -sf "$PWD/.zshrc" ~/.zshrc && echo "[+] .zshrc linked."
ln -sf "$PWD/.gitconfig" ~/.gitconfig && echo "[+] .gitconfig linked."
ln -sf "$PWD/.tmux.conf" ~/.tmux.conf && echo "[+] .tmux.conf linked."
echo ""
 
echo "[*] changing default shell to zsh..."
chsh -s $(which zsh)
echo "[+] default shell set to zsh."
echo ""
 
echo "[+] done."
 
