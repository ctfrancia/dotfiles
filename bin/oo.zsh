#!/bin/zsh

# Function to quickly navigate to your notes directory
function oo() {
    # Configuration based on username
    declare -A CONFIG
    CONFIG[christian.francia]="/Users/christian.francia/Projects/personal/notes"
    CONFIG[ctfrancia]="/Users/ctfrancia/Library/Mobile Documents/iCloud~md~obsidian/Documents/thoughts"

    current_user=$(whoami)
    user_config=${CONFIG[$current_user]}

    # check if that users config exists
    if [ -z "$user_config" ]; then
        echo "Error: No configuration found for user $current_user"
        return 1
    fi

    # cd to the user's config
    echo "Changing to $user_config"
    cd "$user_config" || { echo "Error: Unable to access $user_config"; return 1; }
}
