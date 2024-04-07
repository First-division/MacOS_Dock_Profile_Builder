#!/bin/bash

# Prompt user to choose a profile
echo "Choose a profile:"
echo "1. Default Profile"
echo "2. Profile 1"
echo "3. Profile 2"
read -p "Enter your choice: " choice

# Read apps based on user choice from the text file
case $choice in
    1)
        # Read apps from Default Profile in the text file
        apps=$(awk '/^Default Profile:/,/^Coding Profile:/' /Users/zackunderwood/Desktop/DockProfiles.txt | grep "_CFURLString" | cut -d '"' -f 4)
        ;;
    2)
        # Read apps from Profile 1 in the text file
        apps=$(awk '/^Coding Profile::/,/^Profile 2:/' /Users/zackunderwood/Desktop/DockProfiles.txt | grep "_CFURLString" | cut -d '"' -f 4)
        ;;
    3)
        # Read apps from Profile 2 in the text file
        apps=$(awk '/^Profile 2:/,/^Profile 3:/' /Users/zackunderwood/Desktop/DockProfiles.txt | grep "_CFURLString" | cut -d '"' -f 4)
        ;;
    *)
        echo "Invalid choice. Exiting."
        exit 1
        ;;
esac

# Reset Dock by removing all persistent-apps
defaults delete com.apple.dock persistent-apps

# Add apps from the chosen profile to the Dock
for app in $apps; do
    defaults write com.apple.dock persistent-apps -array-add "<dict><key>tile-data</key><dict><key>file-data</key><dict><key>_CFURLString</key><string>$app</string><key>_CFURLStringType</key><integer>15</integer></dict></dict></dict>"
done

# Restart Dock to apply changes
killall Dock

echo "Dock set to the selected profile"



# #!/bin/bash

# profiles_file="/Users/zackunderwood/Desktop/DockProfiles.txt"

# echo "Available Profiles:"
# awk '/^Default Profile:/,/^Coding Profile:/' "$profiles_file" | grep -oP '(?<=Profile: ).*'

# read -p "Enter profile name or number (e.g., Default, 1, 2): " profile_name

# # Determine profile name based on user input
# case "$profile_name" in
#     "Default") profile_section="^Default Profile:" ;;
#     "1") profile_section="^Profile 1:" ;;
#     "2") profile_section="^Profile 2:" ;;
#     *) echo "Invalid profile name or number." && exit 1 ;;
# esac

# # Read apps from selected profile in the text file
# apps=$(awk "/$profile_section/,/^Profile [0-9]+:/ && /_CFURLString/" "$profiles_file" | grep "_CFURLString" | cut -d '"' -f 4)

# # Reset Dock by removing all persistent-apps
# defaults delete com.apple.dock persistent-apps

# # Add apps from selected profile to the Dock
# for app in $apps; do
#     defaults write com.apple.dock persistent-apps -array-add "<dict><key>tile-data</key><dict><key>file-data</key><dict><key>_CFURLString</key><string>$app</string><key>_CFURLStringType</key><integer>15</integer></dict></dict></dict>"
# done

# # Restart Dock to apply changes
# killall Dock

# echo "Dock set to $profile_name Profile"

# #########

# #!/bin/bash

# # Read apps from Default Profile in the text file
# apps=$(awk '/^Default Profile:/,/^Coding Profile:/' /Users/zackunderwood/Desktop/DockProfiles.txt | grep "_CFURLString" | cut -d '"' -f 4)

# # Reset Dock by removing all persistent-apps
# defaults delete com.apple.dock persistent-apps

# # Add apps from Default Profile to the Dock
# for app in $apps; do
#     defaults write com.apple.dock persistent-apps -array-add "<dict><key>tile-data</key><dict><key>file-data</key><dict><key>_CFURLString</key><string>$app</string><key>_CFURLStringType</key><integer>15</integer></dict></dict></dict>"
# done

# # Restart Dock to apply changes
# killall Dock

# echo "Dock set to Default Profile"
