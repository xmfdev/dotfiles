#!/bin/bash
 
rm -rf ~/.config/nvim
ln -sf "$PWD/nvim" ~/.config/nvim && echo "[+] nvim linked."
ln -sf "$PWD/.zshrc" ~/.zshrc && echo "[+] .zshrc linked."
ln -sf "$PWD/.gitconfig" ~/.gitconfig && echo "[+] .gitconfig linked."
ln -sf "$PWD/.tmux.conf" ~/.tmux.conf && echo "[+] .tmux.conf linked."
 
