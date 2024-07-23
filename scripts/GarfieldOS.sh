#!/bin/bash

# Function to prompt user with Y/N question
prompt_user() {
    while true; do
        read -p "$1 (Y/N): " yn
        case $yn in
            [Yy]* ) return 0;;
            [Nn]* ) return 1;;
            * ) echo "Please answer Y or N.";;
        esac
    done
}

# Replace Wallpaper
if prompt_user "Replace Wallpaper?"; then
    /bin/bash wallpaper
fi

# Replace Theme
if prompt_user "Install Garfield Theme?"; then
    /bin/bash set-theme
fi

# Replace User Image
if prompt_user "Replace User Profile Picture?"; then
    /bin/bash set-user-pfp
fi

# Install Neofetch
if prompt_user "Replace Neofetch Ascii Art?"; then
    sudo apt update
    sudo apt install -y neofetch
    
    neofetch --ascii 
fi

echo "Script execution completed."