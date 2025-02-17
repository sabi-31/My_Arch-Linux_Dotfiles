#!/bin/sh

## Keyitdev https://github.com/Keyitdev/sddm-astronaut-theme
## Copyright (C) 2022-2025 Keyitdev
## Distributed under the GPLv3+ License https://www.gnu.org/licenses/gpl-3.0.html

red='\033[0;31m'
green='\033[0;32m'
no_color='\033[0m'

select_theme(){
    path_to_metadata="/usr/share/sddm/themes/sddm-astronaut-theme/metadata.desktop"
    text="ConfigFile=Themes/"

    line=$(grep $text "$path_to_metadata")

    themes="astronaut black_hole cyberpunk hyprland_kath jake_the_dog japanese_aesthetic pixel_sakura pixel_sakura_static post-apocalyptic_hacker purple_leaves"
    
    echo -e "${green}[*] Select theme (enter number e.g. astronaut - 1).${no_color}"
    echo -e "${green}[*] 0. Other (choose if you created your own theme)."
    echo -e "${green}[*] 1. Astronaut                   2. Black hole${no_color}"
    echo -e "${green}[*] 3. Cyberpunk                   4. Hyprland Kath (animated)${no_color}"
    echo -e "${green}[*] 5. Jake the dog (animated)     6. Japanese aesthetic${no_color}"
    echo -e "${green}[*] 7. Pixel sakura (animated)     8. Pixel sakura (static)${no_color}"
    echo -e "${green}[*] 9. Post-apocalyptic hacker    10. Purple leaves${no_color}"
    read -p "[*] Your choice: " new_number
    
    if [ "$new_number" -eq 0 ] 2>/dev/null;then
        echo -e "${green}[*] Enter name of the config file (without .conf).${no_color}"
        read -p "[*] Theme name: " answer
        selected_theme="$answer"
    elif [ "$new_number" -ge 1 ] 2>/dev/null && [ "$new_number" -le 10 ] 2>/dev/null; then
        set -- $themes
        selected_theme=$(echo "$@" | cut -d ' ' -f $(("new_number")))
        echo -e "${green}[*] You selected: $selected_theme ${no_color}"
    else
        echo -e "${red}[*] Error: invalid number or input.${no_color}"
        exit
    fi

    modified_line="$text$selected_theme.conf"

    sudo sed -i "s|^$text.*|$modified_line|" $path_to_metadata
    echo -e "${green}[*] Changed: $line -> $modified_line${no_color}"
}

while true; do
    clear
    echo -e "${green}sddm-astronaut-theme made by Keyitdev${no_color}"
    echo -e "${green}[*] Choose option.${no_color}"
    echo -e "1. Select theme (/usr/share/sddm/themes/)."
    echo -e "2. Preview the set theme (/usr/share/sddm/themes/)."
    echo -e "3. Exit."
    read -p "[*] Your choice: " x
    case $x in
        [1]* ) select_theme; exit;;
        [2]* ) sddm-greeter-qt6 --test-mode --theme /usr/share/sddm/themes/sddm-astronaut-theme/; exit;;
        [3]* ) exit;;
        * )  echo -e "${red}[*] Error: invalid number or input.${no_color}";;
    esac
done
