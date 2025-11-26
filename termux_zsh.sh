#!/data/data/com.termux/files/usr/bin/bash

# Create a new .zshrc file
rm -rf /data/data/com.termux/files/home/.zshrc
touch /data/data/com.termux/files/home/.zshrc

# Set up the prompt
echo 'PROMPT="%F{red}%~%f %F{white}$%f "' >> ~/.zshrc

# Set up zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-autosuggestions ~/.zsh/zsh-autosuggestions
echo 'source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh' >> ~/.zshrc

# Set up zsh-syntax-highlighting
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ~/.zsh/zsh-syntax-highlighting
echo 'source ~/.zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh' >> ~/.zshrc
echo '
ZSH_HIGHLIGHT_STYLES[command]="fg=cyan,bold"
ZSH_HIGHLIGHT_STYLES[path]="fg=green"

# Ensure ZSH_HIGHLIGHT_STYLES is an associative array
typeset -A ZSH_HIGHLIGHT_STYLES

# Set the color for single-hyphen options (e.g., -a, -l) to green
ZSH_HIGHLIGHT_STYLES[single-hyphen-option]='fg=green'

# Set the color for double-hyphen options (e.g., --help, --version) to green
ZSH_HIGHLIGHT_STYLES[double-hyphen-option]='fg=green'
' >> ~/.zshrc

# Configuration Complete Message 
echo ""
echo -e "\033[1m\033[32m[*] zsh configuration complete." 
echo ""
echo -e "\033[1m\033[32m[*] Directory ~/termux-zsh has been saved...\033[0m"
echo ""
echo -e "\033[1m\033[32m[*] To start the new shell, type: zsh\033[0m"
echo ""
