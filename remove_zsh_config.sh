#!/data/data/com.termux/files/usr/bin/bash

# Remove the .zshrc file
rm -rf /data/data/com.termux/files/home/.zshrc

# Remove zsh-autosuggestions
rm -rf /data/data/com.termux/files/home/.zsh/zsh-autosuggestions

# Remove zsh-syntax-highlighting
rm -rf /data/data/com.termux/files/home/.zsh/zsh-syntax-highlighting

# Remove termux-zsh directory 
rm -rf /data/data/com.termux/files/home/termux-zsh

echo ""
echo -e "\033[1m\033[33m[*] zsh configuration has been removed.\033[0m"
echo ""
echo -e "\033[1m\033[33m[*] If you ran this script in zsh, exit and reenter your zsh shell to confirm removal.\033[0m"
echo "" 
