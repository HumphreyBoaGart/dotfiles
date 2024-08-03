# Sway & Waybar Environment .dotFiles

![dotfiles](https://raw.githubusercontent.com/HumphreyBoaGart/dotfiles/master/screenshot.png)

These are my configuration files for Sway, Waybar, and some related dependencies in my environment. I picked most of these things up back when I was still using Arch, though now it is refined for my Debian machine. I wanted a brutally efficient window manager for my old Thinkpad, and this is what I've ended up with in my quest to minimize dependencies.

## Dependencies

### Main Dependencies

I found most of these in Debian's stock Bookworm repos. Most of these were in the Ubuntu repos as well. When I was running this on Arch a couple years ago, more of these were in the AUR. Either way, you won't have to work very hard installing all of these.

- [sway](https://github.com/swaywm/sway)
- [swaylock-fancy](https://github.com/Big-B/swaylock-fancy)
- [swayidle](https://github.com/swaywm/swayidle)
- [swaync](https://github.com/ErikReider/SwayNotificationCenter)
- [waybar](https://github.com/Alexays/Waybar)
- wofi & bemenu
- sakura & foot
- brightnessctl
- grim
- jq
- slurp
- imagemagick
- wl-clipboard

### Theme Dependencies

- xdg-desktop-portal
- xdg-desktop-portal-gtk
- xdg-user-dirs
- xdg-utils
- [Red Hat Mono Font](https://github.com/RedHatOfficial/RedHatFont)
- [Noto Emoji Font](https://github.com/googlefonts/noto-emoji)
- [Candy Icons](https://github.com/EliverLara/candy-icons)
- Adwaita-dark

To get all the Adwaita GTK 2/3/4 and QT 5/6 elements WITHOUT THE REST OF GNOME in Debian, run:
```
sudo apt install libadwaita-1-0 gnome-themes-extra gnome-themes-extra-data adwaita-qt adwaita-qt6
```

### Other Dependencies

These are just things called on some of the keybinds in `.config/sway/config` and `.config/waybar/config` that will not work if you do not have them. However, they are not really necessary at all to the core setup. A few of these (like iwd) are just specific to my hardware. Your mileage may vary. If you want to run this config out of the box and move on with your life, grab all of these too:

- calcurse
- gnome-clocks
- process_viewer
- btop
- wdisplays
- iwd
- [blueman](https://github.com/blueman-project/blueman)
- pulseaudio & pulseaudio-module-bluetooth
- pavucontrol & pamixer
- xwayland (for legacy app compatability)

## Environment Notes

If you're used to Sway already and know how to read config files, you can skip the rest of the README at this point. If you just got here from GNOME or KDE, you'll probably want to skim the rest of this.

### Sway

`.config/sway/config` is the crux of everything here. There's a lot of commented-out options from various configurations I've run, which I've left behind for reference & flexibility sake.

### Waybar

There are two configurations in .config/waybar/ - `config-single` and `config-double`. Just rename the one you want to use to simply `config` and leave it in the /.config/waybar/ folder.

`config-single` crams everything into a single bar on the bottom of the screen, and is probably the one you want.

`config-double` is my (unfinished) expansion that moves notifications and the system tray to an additional top bar, and pulls in [wttrbar](https://github.com/bjesus/wttrbar) for good measure. The blank spot on the left of the top bar is for an RSS headline ticker, which is the last missing puzzle piece of this environment.

### Application Launchers

This uses both **wofi** and **bemenu** for application launchers. `Mod+Space` opens Wofi, which is the normal launcher. `Mod+Shift+Space` opens bemenu, which opens the selected app in a terminal window (which is very useful for working with some terminal apps, and even debugging GUI apps).

### Twin Terminals

Terminal exec commands I have mapped to a mixture of **sakura** and **foot**. This is just my weird preference. You can go through yourself and set everything to one terminal or the other if you only need to use one.

### Print Screen Key Functions

`Print` and `Mod+Print` take screenshots of the active window and the whole desktop, respectively, and save them in ~/Pictures/Screenshots/

`Alt+Print` opens the color picker. You select a pixel on the screen, and it sends the hex color code straight to the clipboard. `Shift+Alt+Print` does the same thing, only it sends the rgb() value to the clipboard instead.

### Wrangling GTK

I use the Adwaita Dark theme across all GTK versions, as it works out of the box, matches the vibe I wanted on Sway, provides a consistent look, and doesn't require any extra theme utilities. I've included configs for GTK 2 & 3 apps so you don't have to generate your own. For GTK 4, you'll need to run the following commands to hammer the final bits into place:
```
gsettings set org.gnome.desktop.interface gtk-theme "Adwaita-dark"
gsettings set org.gnome.desktop.interface color-scheme 'prefer-dark'
gsettings set org.gnome.desktop.interface icon-theme "candy-icons"
gsettings set org.cinnamon.desktop.default-applications.terminal exec sakura
gsettings set org.cinnamon.desktop.default-applications.terminal exec-arg -x
```
