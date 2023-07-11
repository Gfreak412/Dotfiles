# Use powerline
USE_POWERLINE="true"
# Source manjaro-zsh-configuration
if [[ -e /usr/share/zsh/manjaro-zsh-config ]]; then
  source /usr/share/zsh/manjaro-zsh-config
fi
# Use manjaro zsh prompt
if [[ -e /usr/share/zsh/manjaro-zsh-prompt ]]; then
  source /usr/share/zsh/manjaro-zsh-prompt
fi

alias install="sudo pacman -S"
alias remove="sudo pacman -R"
alias update="sudo pacman -Syu"
alias finstall="flatpak install"
alias fremove="flatpak uninstall"
alias fupdate="flatpak update"
alias rbt="reboot"
alias shtdwn="shutdown now"
alias librum="cd Librum && cd build-Release && ./appLibrum"
