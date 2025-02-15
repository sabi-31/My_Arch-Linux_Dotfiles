This is for me to store my own dotfiles, plus also a guide if anyone is interested.

The stuff is do here is an immediate follow up to my [Arch Linux Install guide](https://github.com/sabi-31/My_Perfect_Arch-linux). If you did those steps first, everything here will work for you.

If you didn't, I will try to point out the differences if any for other distros. But the main goal of this is to get a good looking and functional Hyprland Desktop Experience:

1. Window Manager - Hyprland
2. Terminal Emulator - Kitty
3. Shell - ZSH
4. File Browser - Dolphin
5. Browser - Firefox
6. Main Font - JetbrainsMono Nerd Font

### 1. Install Hyprland related applications

```
sudo pacman -S hyprland firefox dolphin kitty wofi waybar hyprpolkitagent grim kitty qt5-wayland qt6-wayland slurp xdg-desktop-portal-hyprland xdg-utils xorg-xwayland vlc zsh ttf-jetbrains-mono-nerd

paru -S wlogout
```

Set this line in your hyprland config:

---

exec-once = systemctl --user start hyprpolkitagent

---

https://wiki.archlinux.org/title/XDG_MIME_Applications


### 2. Configure the shell
	
	1. Install Oh-my-zsh
	2. Install Extensions
	3. Make changes to your .zshrc

### 3. Splash Image - Arch with Unified Kernel Images Only
	
	```
	sudo pacman -S imagemagick
	magick in.png -type truecolor put.bmp
	```

### 4. Hyprland
1. Workspace Overview
2. Fractional Scaling
3. Notification Daemon
4. [l1](https://github.com/mylinuxforwork/dotfiles/tree/main/share) and [l2](https://www.youtube.com/watch?v=J1L1qi-5dr0)
### 5. [Night Light](https://wiki.archlinux.org/title/Redshift)
### 6. Plymouth
### 7. Wofi
### 8. Waybar
### 9. Wlogout
### 10. Pywal
### 11. kitty
	[SSH Issue](https://wiki.archlinux.org/title/Kitty#Terminal_issues_with_SSH)
### Plymouth
### Clipboard manager
HDR
