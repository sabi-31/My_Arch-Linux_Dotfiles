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
    sudo pacman -S hyprland uwsm hyprpolkitagent sddm firefox dolphin kitty qt5-wayland qt6-wayland xdg-desktop-portal-hyprland xdg-utils xorg-xwayland vlc libnotify fastfetch 
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
	3. Make changes to your .zshrc -> fastfetch

3. Hyprland - Basic

    Set this line in your hyprland config:

    ---

    exec-once = systemctl --user start hyprpolkitagent

    ---

4. SDDM

    Credits To -> [https://github.com/Keyitdev/sddm-astronaut-theme](https://github.com/Keyitdev/sddm-astronaut-theme)
    
    ```
    mkdir /etc/sddm.conf.d
    touch /etc/sddm.conf.d/virtualkbd.conf
    sh -c "$(curl -fsSL https://raw.githubusercontent.com/keyitdev/sddm-astronaut-theme/master/setup.sh)"
    ```

    When you run, the script, selected the optins to update the dependencies, download the repo, and copy the files (/usr/share/sddm/themes).

    After that, use the script options to select a theme. This is updated in the file (/etc/sddm.conf) which points to the astronaut theme folder, and the specific theme is referenced in the (/usr/share/sddm/themes/sddm-astronaut-theme/metadata.desktop) file.

    Once the theme is set, and the files are copied over, you can copy the setup.sh file and use it in the future to change themes. I have a stripped down version of it in assets/SDDM folder. 


5. rEFInd

6. Kitty

7. Dolphin

    MIME file Associations

8. Wallpapers

    I will use swww. Waypaper is a gui for swww.

    ```
    sudo pacman -S swww
    ```

    Start swww using:
    ```
    swww-Daemon
    ```

    To setup automatically, create file and folder .config/swww/init.sh and add
    ```
    swww img anime.png
    ```

    Then in hyprland.conf, add
    ```
    
    ```

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
    
    I like using an extension for new tabs, called [Mtab](https://addons.mozilla.org/en-US/firefox/addon/mtab/), that has really some good aesthetics. You can have the same by copying my config and wallpapers from assets/Firefox folder.

    ```

    ```

    2. Css

14. Hyprland - Advanced
    1. Notification Daemon
    2. Fractional Scaling
    3. Extensions

15. Logout Menu
    ```
    paru -S wlogout
    ```

    copy /etc/wlogout/* to .config/wlogout/ and edit them.

    logout -> hyprctl dispatch exit

    replace hibernate with firmware -> systemctl reboot --firmware-setup
    Download a png icon for firmware, copy it to /usr/share/wlogout/icons/ /usr/local/share/wlogout/icons/
    Add these lines to style.css:
    
    ```
    #firmware {
        background-image: image(url("/usr/share/wlogout/icons/firmware.png"), url("/usr/local/share/wlogout/icons/firmware.png"));
    }
    ```

16. Clipboard Manager

17. [Night Light](https://wiki.archlinux.org/title/Redshift)

18. [Screenshot]((https://www.youtube.com/watch?v=J1L1qi-5dr0))
    ```
    sudo pacman -S grim slurp
    ```

19. IDE
    1.  Neovim
    
    
    2.  VS Code
 
	Install the official microsoft provided version using:
	```
	paru -S visual-studio-code-vin
	```

	If you're using wayland, run the below command to enable wayland and fractional scaling support:
	```
	echo '--ozone-platform=wayland' > ~/.config/code-flags.conf
	```

20. Miscellaneous
    1. 'go' folder in home.
        If you install an AUR application, that uses golang as a dependency, you may see a 'go' folder in your home directory. This may be annoying for some (me included), as you cannot remove this directory directly without breaking something. An easy fix is to create a .binaries folder in home, move the go folder there, and update go path variables to point there
        ```
        mkdir ~/.binaries
        mv ~/go ~/.binaries
        go env -w GOPATH=~/.binaries
        ```