# Sway .dotFiles

![dotfiles](https://raw.githubusercontent.com/HumphreyBoaGart/dotfiles/master/screenshot.png)

These are my configuration files for Sway, Waybar, and some related dependencies in my environment. I picked most of these things up back when I was still using Arch, though now it is refined for my Debian machine. I wanted a brutally efficient window manager for my old Thinkpad, and this is what I've ended up with in my quest to minimize dependencies.

## Dependencies

### Main Dependencies

If you're on Debian or Arch based distros, you can find most of these in the package managers.

- [sway](https://github.com/swaywm/sway)
- [swaylock-fancy](https://github.com/Big-B/swaylock-fancy)
- [swayidle](https://github.com/swaywm/swayidle)
- [swaync](https://github.com/ErikReider/SwayNotificationCenter)
- [waybar](https://github.com/Alexays/Waybar)
- wofi & bemenu
- sakura & foot
- brightnessctl
- wdisplays
- grim
- jq
- slurp
- wl-clipboard
- calcurse
- gnome-clocks
- process_viewer
- btop

### Theme Dependencies

- [Red Hat Mono Font](https://github.com/RedHatOfficial/RedHatFont)
- [Noto Emoji Font](https://github.com/googlefonts/noto-emoji)
- [Candy Icons](https://github.com/EliverLara/candy-icons)
- Adwaita-dark

To get all the Adwaita elements WITHOUT GNOME in Debian, run:
`sudo apt install gnome-themes-extra gnome-themes-extra-data`

### Optional Dependencies

These are all specific to the hardware I'm using, and you may not need them. You'll have to modify the Waybar config if you want to ditch any of these.

- iwd
- pulseaudio, pavucontrol, pamixer
- [blueman](https://github.com/blueman-project/blueman), pulseaudio-module-bluetooth

## Environment Notes

If you're used to Sway already, you can skip the rest of the README at this point. If you just got here from GNOME or KDE, you'll probably want to skim the rest of this.

### Sway

`.config/sway/config` is the crux of everything here. There's a lot of commented-out options I've left behind from various configurations I've run, and some of them are really useful if you need something to fall back on while debugging something else.

### Waybar

There are two configurations in .config/waybar/ - `config-single` and `config-double`. Just rename the one you want to use to simply `config` and leave it in the /.config/waybar/ folder.

`config-single` crams everything into a single bar on the bottom of the screen, and is probably the one you want.

`config-double` is my (unfinished) expansion that moves notifications and the system tray to an additional top bar, and pulls in [wttrbar](https://github.com/bjesus/wttrbar) for good measure. The blank spot on the left of the top bar is for an RSS headline ticker, which is the last missing puzzle piece of this environment.

### Twin Terminals

Terminal exec commands I have mapped to a mixture of **sakura** and **foot**. This is just my weird preference. You can go through yourself and set everything to one terminal or the other if you only need to use one.

### Application Launchers

This uses both **wofi** and **bemenu** for application launchers. `Mod+Space` opens Wofi, which is the normal launcher. `Mod+Shift+Space` opens bemenu, which opens the selected app in a terminal window (which is very useful for working with some terminal apps, and even debugging GUI apps).

### Wrangling GTK

I use the Adwaita Dark theme across all GTK versions, as it works out of the box pretty well with the vibe I wanted on Sway, and doesn't require any theme utilities to set up beyond getting Adwaita out of the repos. I've included configs for GTK 2 & 3 apps. For GTK 4, you'll need to run the following commands to hammer the last bits into place:
