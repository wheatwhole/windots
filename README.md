# windots

A cozy **One Piece Windows 11 rice** with blue and white accents, based on the [Catppuccin Mocha palette](https://catppuccin.com/palette/).

Inspired by **niivu’s Windows themes**, **cobalt.tools**, and **Catppuccin**.

---

## Before you start (important)

* **Create a Windows restore point** before applying everything.
* You **must update file paths** to your home directory in:

  * `komorebi.json`
  * `fastfetch/config.jsonc`
  * `yasb/config.yaml`

Skipping this will break things.

---

## Required fonts

Without these fonts, icons will not render correctly and text spacing will be broken.

### Install all fonts the same way:

Extract → select all font files → right-click → **Install**

1. **SF Pro**

   * [https://github.com/chris-short/apple-san-francisco-pro-fonts/archive/refs/heads/main.zip](https://github.com/chris-short/apple-san-francisco-pro-fonts/archive/refs/heads/main.zip)

2. **JetBrainsMono Nerd Font (NFP)**

   * [https://github.com/ryanoasis/nerd-fonts/releases/download/v3.4.0/JetBrainsMono.zip](https://github.com/ryanoasis/nerd-fonts/releases/download/v3.4.0/JetBrainsMono.zip)

3. **Fira Code Nerd Font**

   * [https://github.com/ryanoasis/nerd-fonts/releases/download/v3.4.0/FiraCode.zip](https://github.com/ryanoasis/nerd-fonts/releases/download/v3.4.0/FiraCode.zip)

Restart is recommended after installing fonts.

---

## Windows theme (Catppuccin)

This section modifies Explorer and system theming.

1. Install **StartAllBack**
   [https://apps.microsoft.com/detail/xpfmhkp3qhrqrh](https://apps.microsoft.com/detail/xpfmhkp3qhrqrh)

   * 100-day trial, then a one-time $5 donation
   * Trial renewal exists, but is not recommended

2. In StartAllBack:

   * Disable everything
   * Explorer → **Win 7 Command Bar**

3. Install **SecureUxTheme**
   [https://github.com/namazso/SecureUxTheme](https://github.com/namazso/SecureUxTheme)
   Restart your PC after installing.

4. Install **Catppuccin for Windows 11** by niivu
   [https://www.deviantart.com/niivu/art/Catppuccin-for-Windows-11-1076249390](https://www.deviantart.com/niivu/art/Catppuccin-for-Windows-11-1076249390)

5. Follow niivu’s theme installation guide
   [https://www.deviantart.com/niivu/art/How-to-install-Windows-10-or-11-Themes-708835586](https://www.deviantart.com/niivu/art/How-to-install-Windows-10-or-11-Themes-708835586)

6. Restart again

---

## YASB (status bar)

1. Install YASB
   [https://github.com/amnweb/yasb](https://github.com/amnweb/yasb)

2. Locate YASB config directory

   ```
   C:\Users\<username>\.config\yasb
   ```

3. Copy:

   * `config.yml`
   * `styles.css`
     into the YASB folder

4. Fix file paths in `config.yml`

5. Add your **weatherapi.com API key** to `config.yml`

6. **Microsoft Edge must be installed**
   You do not need to use it. YASB depends on it internally.

### Audio visualizer (CAVA)

Install CAVA:

```
winget install --id=karlstav.cava -e
```

Restart the PC after installing.

---

## Windhawk

1. Install Windhawk
   [https://windhawk.net/](https://windhawk.net/)

2. Install and enable these mods:

   * Taskbar Clock Customization
   * Taskbar height and icon size
   * Windows 11 Start Menu Styler
   * Windows 11 Taskbar Styler
   * Windows 11 Notification Center Styler

3. For each mod:

   * Open **Advanced**
   * Paste the corresponding JSON into **Mod Settings**

---

## Windows Terminal

1. Install Windows Terminal
   [https://github.com/microsoft/terminal](https://github.com/microsoft/terminal)

2. Download [./terminal/settings.json](./terminal/settings.json)

3. Go to Terminal's settings
  
5. Replace the existing `settings.json`

---

## Fastfetch

Requirements:

* Windows Terminal **1.22+**
* WezTerm (for image rendering)

1. Install Fastfetch:

```
scoop install fastfetch
```

Fastfetch repo:
[https://github.com/fastfetch-cli/fastfetch](https://github.com/fastfetch-cli/fastfetch)

2. Install ImageMagick:

```
scoop install main/imagemagick fastfetch
```

3. Go to:

```
%UserProfile%\.config\fastfetch
```

4. Paste the config file

If images do not render:

* Use `.sixel` files
* Set image type to `raw` in the config

---

## VS Code

* Search **Catppuccin** in extensions
* Install your preferred Catppuccin theme variant

---

## Optional tools

### AltSnap

Improves window dragging behavior.
[https://github.com/RamonUnch/AltSnap](https://github.com/RamonUnch/AltSnap)

### Vivaldi

* Install Catppuccin theme
  [https://github.com/catppuccin/vivaldi](https://github.com/catppuccin/vivaldi)
* Use the **latest Vivaldi Snapshot** for auto-hiding panels
  (Zen Browser–style behavior)

### Catppucinnifier
I used this to convert some of the wallpapers in wallpapers/ to Catppuccin.
https://github.com/lighttigerXIV/catppuccinifier
