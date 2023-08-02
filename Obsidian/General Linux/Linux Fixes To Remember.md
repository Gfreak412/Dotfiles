General 

1. [create a .desktop file]
[Template]

``[Desktop Entry]
`Encoding=UTF-8
`Version=1.0
`Type=Application
`Terminal=false
`Exec=/path/to/executable
`Name=Name of Application
`Icon=/path/to/icon`

2. [Sudo delete a directory]
    `sudo rm -rf "Directory Name"`

 3. [ffmpeg Video Conversion Commands]
    Individual Files Coversion
    `ffmpeg -i intro.mkv -codec copy intro.mp4

    Batch File Convert
    `for i in *.mkv; do
    `ffmpeg -i "$i" -codec copy "${i%.*}.mp4"`

4. [smb.conf]
[global]
`server role = standalone server`
`map to guest = Bad User`
`usershare allow guests = yes`
  
[share]  
`comment = movies`
`path = /home/kanishk`
`read only = no`
`guest ok = yes`
`force user = kanishk`
`` force group = kanishk`

5. [Slow Surfing Speed]
Install `reflector`
Edit `/etc/xdg/reflector/reflector.conf` this file.
Change Country to India

**Printing**
[CUPS](https://openprinting.github.io/cups/) is the standards-based, open source printing system developed by OpenPrinting for Linux® and other Unix®-like operating systems. (This Is necessary for printing, config can be available in archcraft config files folder on 2nd storage)

**Manjaro**

1. make legacy application theme permanent by disabling extension "Legacy (GTK3) Theme Scheme Auto Switcher"

2. if a pacman mirror of india starts showing error and update cannot be applied/transaction cannot be made reset pacman-mirrors by
`sudo pacman-mirrors --country all --api --protocols all --set-branch stable && sudo pacman -Syu`
 3. [IF SLOW SURFING SPEED]
 (https://forum.manjaro.org/t/internet-speed-is-slow/103443)
 You could write a config file…
Create a file & Edit it:

`sudo vim /etc/modprobe.d/wifi.conf`

Add to it:

`options iwlwifi swcrypto=1 # enables software crypto
`options iwlwifi power_save=0 # disables power management
`options iwlwifi 11n_disable=1 # disables 11n connections
`options iwlwifi disable_11ac=1 # disables 11ac connections
`options iwlwifi disable_11ax=1 # disables 11ax connections`

Save it and exit.
Reboot your system.

4. [If System Time & Date is Wrong]

`systemctl enable --now systemd-timesyncd`
``
**Window Manager**

1. [If in a WM, qt5ct or qt6ct don't work and showing "not configured correctly" do this-](https://github.com/desktop-app/qt5ct)
`sudo vim /etc/environment`
add line `QT_QPA_PLATFORMTHEME=qt5ct`

2. [Flatpak Not follows uniform Themes?]
Install `flatseal` 
Allow user file permission
and to `~/.themes` `~/.icons`

ENV Variables 
`ICON_THEME=Qogir-dark` ``GTK_THEME=Arc-Dark``

**ALT**
`nvim ~/.local/share/flatpak/overrides/global`

[Context]
filesystems=/usr/share/themes;/usr/share/icons;/usr/share/fonts;home;~/.themes;~/.icons;~/.fonts;host

[Environment]
GTK_THEME=Matcha-dark-sea
ICON_THEME=Papirus-maia

3. [Bind Multimedia Keys]
Install `pulseaudio` , `pulseaudio-alsa` & `pulsemixer` 

`XF86AudioRaiseVolume  
 `amixer -q set Master 5%+ unmute

`XF86AudioLowerVolume
  `amixer -q set Master 5%- unmute
  
`XF86AudioMute
  `amixer -D pulse sset Master toggle-mute       

4. [Properly Align & SIze The Icons In Polybar or any other bar]
 
 Install SymbolsOnly Nerd font (`Symbols Nerd Font`)
 Use the Main text font non-nerd font version
 And second font will be `Symbols Nerd Font Mono `

5. [Set User Icons]

User icon (avatar) SDDM reads the user icon (a.k.a. "avatar") as a PNG image from either ~/.face.icon for each user, or the common location for all users specified by FacesDir in an SDDM configuration file. The configuration setting can be placed in either /etc/sddm.conf directly, or, better, a file under /etc/sddm.conf.d/ such as /etc/sddm.conf.d/avatar.conf.

To use the FacesDir location option, place a PNG image for each user named username.face.icon at the location specified by the FacesDir key in the configuration file. The default location for FacesDir is /usr/share/sddm/faces/. 

I Just kept the pic I wanted in /usr/share/sddm/faces/ with the name <user-name>.face.icon As per the wiki it seems only .png files are supported.

6. [OBS & Screen Capture]

![[2023-04-21_072859-.png]]

Screen Capture(XSHM)
Window Capture (Xcomposite)

If Screen Capture(PipeWire) doesn't show screen, it's just black, `pipewire-media-session` maybe missing. (IT IS MISSING IN MANJARO)

7. [Set Default Magnet Link Opener]

`gio mime x-scheme-handler/magnet org.qbittorrent.qBittorrent.desktop`
`gio mime x-scheme-handler/magnet org.deluge_torrent.deluge`

8. [Pacman requires Manual Intervention]

`sudo pacman -S base-devel`

9. [GTK+ apps take 25s to launch]

`yay -R xdg-dekstop-portal-gnome`

10. [Pamac-gtk not following gtk theme]

	sudo pacman -S pamac-gtk3