> This is for me to store my own dotfiles, plus also a guide if anyone is interested.

### The stuff I do here is an immediate follow up to my [Arch Linux Install guide](https://github.com/sabi-31/My_Perfect_Arch-linux). If you did those steps first, everything here will work for you.


- Window Manager - Hyprland
- Display Manager - SDDM
- Terminal Emulator - Kitty
- Shell - ZSH
- File Browser - Dolphin
- Browser - Firefox
- Main Font - JetbrainsMono Nerd Font



1. Install all the necessary packages

	Assuming that you're on a fresh install of arch, without any GUI Apps, install all of the following apps to get started:

    ```
    sudo pacman -S hyprland uwsm hyprpolkitagent sddm firefox dolphin kitty qt5-wayland qt6-wayland xdg-desktop-portal-hyprland xdg-utils xorg-xwayland vlc  
    ```

	Then enable SDDM using:
	```
	sudo systemctl enable sddm
	```

	Then reboot. SDDM should start up and allow you to login into Hyprland.
    > Choose the uwsm-manager option, it's the default and recommended one.

2. Shell
    ```
    sudo pacman -S zsh ttf-jetbrains-mono-nerd
    ```

    1. Install Oh-my-zsh
	2. Install Extensions
	3. Make changes to your .zshrc

3. Hyprland - Basic

    Set this line in your hyprland config:

    ---

    exec-once = systemctl --user start hyprpolkitagent

    ---

4. SDDM

5. rEFInd

6. Kitty

7. Dolphin

    MIME file Associations

8. Wallpapers

9. Bar
    ```
    sudo pacman -S waybar
    ```

10. App Launcher
    ```
    sudo pacman -S wofi
    ```

11. Splash Image

    ```
    sudo pacman -S imagemagick
    magick in.png -type truecolor put.bmp
    ```

12. Themes

13. Firefox
    1. New Tab
    2. Css

14. Hyprland - Advanced
    1. Notification Daemon
    2. Fractional Scaling
    3. Extensions

15. Logout Menu
    ```
    paru -S wlogout
    ```

16. Clipboard Manager

17. [Night Light](https://wiki.archlinux.org/title/Redshift)

18. [Screenshot]((https://www.youtube.com/watch?v=J1L1qi-5dr0))
    ```
    sudo pacman -S grim slurp
    ```

19. Neovim