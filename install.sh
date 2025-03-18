#!/bin/bash

echo "Starting installation of macOS automation scripts..."

# Install Quick Actions
echo "Installing Quick Actions..."
mkdir -p ~/Library/Services/
cp workflows/*.workflow ~/Library/Services/

# Install AppleScripts
echo "Installing AppleScripts..."
mkdir -p ~/Library/Scripts/
cp scripts/*.applescript ~/Library/Scripts/

echo "Installation complete!"
echo "You can now use Quick Actions from Finder or run AppleScripts via Terminal."
