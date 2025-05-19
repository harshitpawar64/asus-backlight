#!/bin/bash
set -e

# Install main script
echo "Installing asus-backlight to /usr/local/bin..."
sudo install -m 755 asus-backlight /usr/local/bin/asus-backlight

# Install man page
echo "Installing man page to /usr/local/share/man/man1..."
sudo install -d /usr/local/share/man/man1
sudo install -m 644 asus-backlight.1 /usr/local/share/man/man1/asus-backlight.1
sudo mandb || true

# Install bash completion
if [ -d "/etc/bash_completion.d" ]; then
    echo "Installing bash completion to /etc/bash_completion.d..."
    sudo install -m 644 asus-backlight-completion.bash /etc/bash_completion.d/asus-backlight
else
    echo "Warning: /etc/bash_completion.d does not exist. Skipping bash completion install."
fi

# Install helper script
echo "Installing asus-backlight-helper to /usr/local/bin..."
sudo install -m 755 asus-backlight-helper /usr/local/bin/asus-backlight-helper

# Install polkit policy
echo "Installing polkit policy to /usr/share/polkit-1/actions..."
sudo install -m 644 com.github.harshitpawar64.asus-backlight.policy /usr/share/polkit-1/actions/com.github.harshitpawar64.asus-backlight.policy

echo "Installation complete." 