#!/bin/bash
set -e

# Remove main script
echo "Removing /usr/local/bin/asus-backlight..."
sudo rm -f /usr/local/bin/asus-backlight

# Remove helper script
echo "Removing /usr/local/bin/asus-backlight-helper..."
sudo rm -f /usr/local/bin/asus-backlight-helper

# Remove man page
echo "Removing /usr/local/share/man/man1/asus-backlight.1..."
sudo rm -f /usr/local/share/man/man1/asus-backlight.1
sudo mandb || true

# Remove bash completion
echo "Removing /etc/bash_completion.d/asus-backlight..."
sudo rm -f /etc/bash_completion.d/asus-backlight

# Remove polkit policy
echo "Removing /usr/share/polkit-1/actions/com.github.harshitpawar.asus-backlight.policy..."
sudo rm -f /usr/share/polkit-1/actions/com.github.harshitpawar.asus-backlight.policy

echo "Uninstallation complete." 