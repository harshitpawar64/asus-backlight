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

You can install **asus-backlight** using either the provided install script or the `.deb` package.

### Option 1: Install Script (Universal, Source-Based)

```bash
git clone https://github.com/harshitpawar64/asus-backlight.git
cd asus-backlight
sudo ./install.sh
```
- This will copy all necessary files, set up bash completion, man page, and polkit policy.

### Option 2: Debian Package (.deb) [Recommended for Debian/Ubuntu]

1. Download the latest `.deb` from the [Releases page](https://github.com/harshitpawar64/asus-backlight/releases).
2. Install it:
   ```bash
   sudo dpkg -i asus-backlight_1.0.0_all.deb
   ```
3. If you see dependency errors, fix them with:
   ```bash
   sudo apt-get install -f
   ```

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
