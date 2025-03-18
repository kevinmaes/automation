#!/bin/bash

# Colors for better readability
GREEN='\033[0;32m'
BLUE='\033[0;34m'
NC='\033[0m' # No Color

echo -e "${GREEN}macOS Automation Scripts Installer${NC}\n"

# Function to list available scripts
list_scripts() {
    local dir=$1
    local prefix=$2
    local i=1
    
    if [ -d "$dir" ]; then
        for script in "$dir"/*; do
            if [ -e "$script" ]; then
                echo -e "${BLUE}$i)${NC} $(basename "$script")"
                script_paths[$i]="$script"
                ((i++))
            fi
        done
    fi
    return $i
}

# Function to install a specific script
install_script() {
    local script=$1
    local basename=$(basename "$script")
    
    if [[ $script == *.workflow ]]; then
        cp -R "$script" ~/Library/Services/
        echo "✓ Installed Quick Action: $basename"
    elif [[ $script == *.applescript ]]; then
        cp "$script" ~/Library/Scripts/
        echo "✓ Installed AppleScript: $basename"
    fi
}

# Create necessary directories
mkdir -p ~/Library/Services/
mkdir -p ~/Library/Scripts/

# Initialize array for script paths
declare -a script_paths

echo "Available Quick Actions:"
list_scripts "workflows" "Quick Action"
quick_actions_end=$?

echo -e "\nAvailable AppleScripts:"
list_scripts "scripts" "AppleScript"
all_scripts_end=$?

echo -e "\nInstallation options:"
echo -e "${BLUE}a)${NC} Install all scripts"
echo -e "${BLUE}q)${NC} Quit without installing"
echo -e "\nEnter the numbers of scripts to install (separated by spaces)"
echo "Example: 1 3 4 or 'a' for all: "

read -r selection

if [ "$selection" = "q" ]; then
    echo "Installation cancelled."
    exit 0
fi

if [ "$selection" = "a" ]; then
    echo -e "\nInstalling all scripts..."
    for ((i=1; i<all_scripts_end; i++)); do
        install_script "${script_paths[$i]}"
    done
else
    echo -e "\nInstalling selected scripts..."
    for num in $selection; do
        if [ "$num" -ge 1 ] && [ "$num" -lt "$all_scripts_end" ]; then
            install_script "${script_paths[$num]}"
        else
            echo "Warning: Invalid selection $num ignored"
        fi
    done
fi

echo -e "\n${GREEN}Installation complete!${NC}"
echo "You can now use Quick Actions from Finder or run AppleScripts via Terminal."
