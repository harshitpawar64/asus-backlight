# asus-backlight

A lightweight command-line utility to control Asus laptop keyboard backlighting on Linux systems.

## Features
- Change Asus keyboard backlight mode, speed, and color
- Bash completion for easy command-line usage
- Comprehensive man page documentation
- Uses Polkit for secure privileged access
- Simple & lightweight command-line interface

## Tested Hardware
- ASUS TUF Gaming F17
- ASUS TUF Gaming F15

## Installation

1. Clone this repository:
   ```bash
   git clone https://github.com/harshitpawar64/asus-backlight.git
   cd asus-backlight
   ```
2. Run the install script (requires sudo):
   ```bash
   sudo ./install.sh
   ```
   This will:
   - Copy `asus-backlight` to `/usr/local/bin/`
   - Copy `asus-backlight-helper` to `/usr/local/bin/` (used for privileged actions)
   - Install the man page
   - Install bash completion
   - Install the Polkit policy for secure privilege escalation

## Usage
```bash
asus-backlight [flags]
```

You will be prompted for authentication only when changing the backlight (via Polkit).

### Flags

- `--mode MODE`   Set the backlight mode:  
  `0 = Static`, `1 = Breathing`, `2 = Color Cycle`
- `--speed SPEED` Set the speed:  
  `0 = Slow`, `1 = Medium`, `2 = Fast`
- `--color R,G,B` Set the color in RGB format (e.g., `255,0,0` for red)
- `--help`        Show help message
- `--status`      Show current backlight setting

## Example

```bash
asus-backlight --mode 1 --speed 2 --color 0,255,0  # Sets keyboard backlight to Breathing mode, Fast speed, Green color
```

## Requirements

- Polkit (PolicyKit) installed and running
- Asus laptop with `/sys/devices/platform/asus-nb-wmi/leds/asus::kbd_backlight/kbd_rgb_mode` available

## Troubleshooting

- **Device Not Found**: Check if `/sys/devices/platform/asus-nb-wmi/leds/asus::kbd_backlight/kbd_rgb_mode` exists.
- **Authentication Failed**: Ensure `polkit` service is running: `systemctl status polkit`

## Uninstallation

To remove all installed files, run:
```bash
sudo ./uninstall.sh
```

## License

MIT License © 2025 Harshit Pawar. See [LICENSE](LICENSE). 
