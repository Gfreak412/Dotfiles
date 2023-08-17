# Use powerline
USE_POWERLINE="true"
# Source manjaro-zsh-configuration
export PATH="$HOME/.emacs.d/bin:$PATH"

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
alias total-update="sudo pacman -Syu && yay && flatpak update && exit"
alias finstall="flatpak install"
alias fremove="flatpak uninstall"
alias fupdate="flatpak update"
alias rbt="reboot"
alias shtdwn="shutdown now"
alias librum="cd Librum && cd build-Release && ./appLibrum"
alias yt-dl="yt-dlp --embed-thumbnail -x --audio-format mp3"
#alias eww="cd eww/target/release && ./eww"

#colorscipt -r
#neofetch
