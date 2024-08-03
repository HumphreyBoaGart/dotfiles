# Sway .dotFiles

These are my configuration files for Sway, Waybar, and some related dependencies in my environment.

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

### Optional Dependencies

These are all specific to the hardware I'm using, and you may not need them. You'll have to modify the file if you want to ditch any of these.

- iwd
- pulseaudio, pavucontrol, pamixer
- [blueman](https://github.com/blueman-project/blueman), pulseaudio-module-bluetooth

## Environment Notes

### Terminal

Terminal exec commands I have mapped to a mixture of **sakura** and **foot**. This is just my weird preference. You can go through yourself and set everything to one terminal or the other if you only need to use one.

### Application Launcher

This uses both **wofi** and **bemenu** for application launchers. `Mod+Space` opens Wofi, which is the normal launcher. `Mod+Shift+Space` opens bemenu, which opens the selected app in a terminal window (which is very useful for debugging or working with some terminal apps).
