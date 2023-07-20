1. **Arch-Linux/Manjaro**
   1) Install yay 
    (https://www.linuxcapable.com/how-to-install-yay-aur-helper-on-manjaro-21-linux/)
   2) Install Multimedia Codecs-If not Available
    `sudo pacman -S a52dec faac faad2 flac jasper lame libdca libdv libmad libmpeg2 libtheora libvorbis libxv wavpack x264 xvidcore gstreamer0.10-plugins`
   3) Enable Firewall
   4) Uncomment the `Parallel Downloads` line in `/etc/pacman.conf`
   
1. **Fedora Workstation**
   1) Set Fastest Mirror
    `sudo nano /etc/dnf/dnf.conf`

    `fastestmirror=true`
    `max_parallel_downloads=10`
    `deltarpm=true`
   
   2) Update & Upgrade   
    `sudo dnf update && sudo dnf upgrade && exit`

   3) Install Arc menu

   4) Add Flathub Repo
    `flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo`
    
   5) Install Apps
    `sudo dnf install bleachbit`
    `sudo dnf install dnfdragora`
    `sudo flatpak install vlc`
    `sudo dnf install steam`
    `sudo flatpak install whatsapp`

   6) Install RPM Fusion
    `sudo dnf install https://download1.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm`

    `sudo dnf install https://download1.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm`

   7) Install Preload
    `sudo dnf copr enable elxreno/preload -y && sudo dnf install preload -y`

   8) Gnome Extensions
    `sudo dnf install gnome-shell-extension-appindicator`

    `sudo dnf install gnome-extensions-app`

    `sudo dnf install gnome-tweak-tool`

   9) Change Hostname
    `sudo hostnamectl set-hostname "MyPrecious"`

   10) Install Fedy
    `sudo dnf copr enable kwizart/fedy`
    `sudo dnf install fedy -y`
    
   11) Multimedia Codecs
    `sudo dnf install gstreamer1-plugins-{bad-\*,good-\*,base} gstreamer1-plugin-openh264 gstreamer1-libav --exclude=gstreamer1-plugins-bad-free-devel`

	    `sudo dnf install lame\* --exclude=lame-devel`

    `sudo dnf group upgrade --with-optional Multimedia`

2. **Open SUSE** 
   1) Packman Essential Repo 
    `zypper ar -cfp 90 http://ftp.gwdg.de/pub/linux/misc/packman/suse/openSUSE_Leap_15.0/Essentials packman-essentials`

    https://www.reddit.com/r/unixporn/comments/pilgqs/kde_my_current_kde_setup/

    Icons McMuse-circle-red

   2) Workspace theme: Midnight Dark

    Icons: Zafiro

    Window decorations: Sierra breeze

    Wallpaper and article here

    Latte dock for both panels.
    https://www.pling.com/p/1916655/

3. **Zorin OS**
    https://forum.zorin.com/t/things-you-should-do-after-installing-zorin-os-16/11015
    https://forum.zorin.com/t/top-x-1-things-to-do-after-installing-zorin-os-16/5938
