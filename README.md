## Dotfiles
<p align="center">
	<img src="https://github.com/niraj998/niraj998/blob/main/assets/dots/Screenshot.png" align="right" width="400px">
</p>

###### Collection/Backup of my config files I use. If you have any suggestions, ideas, or issue. Create Issue/Pull Request, happy to learn more. if you like something and want to take it for yourself.

#### Programs I Use/Configs for.

|            | Programs           |
| ---------- | ------------------ |
| Terminal   | st, kitty          |
| Shell      | mksh, dash         |
| Editor     | neovim             |
| Statusbar/Widgets     | eww             |
| Compositor     | picom-ibhagwan             |
| Music     | Spotify, mpd              |


<br>
<br>
<br>

## Setup
**Dependencies**

You probably have most of these this is everything I've used in configs.


  ```shell
  yay -Sy rofi playerctl mpc jq maim dash simple-mtpfs ffmpeg fuse2 wmctrl xclip pamixer bluez \
  bluez-utils blueberry alsa-plugins alsa-utils alsa pulseaudio pulsemixer feh redshift mpd \
  bspwm pacman-contrib --needed
  ```

**Clone this repository**

  ```shell
  git clone  https://github.com/niraj998/dotfiles.git
  cd dotfiles
  ```

**Copy configurations**
- these contains main config files, and dependent on each other, you can pick and take whatever you want from rest.
  ```shell
  cd .config
   [ -d "$HOME/.config/bspwm" ] &&  mv $HOME/.config/bspwm  $HOME/.config/bspwm.old
   [ -d "$HOME/.config/eww" ] && mv $HOME/.config/eww  $HOME/.config/eww.old
   [ -d "$HOME/.config/sxhkd" ] && mv $HOME/.config/sxhkd $HOME/.config/sxhkd.old
   [ -d "$HOME/.config/rofi" ] && mv $HOME/.config/rofi $HOME/.config/rofi.old
   cp -r bspwm $HOME/.config/
   cp -r eww $HOME/.config/
   cp -r rofi $HOME/.config/
   cp -r sxhkd $HOME/.config/
   cd ..
  ```

**Install fonts from .font folder.** (needed for Icons)

   ```shell
   cd .fonts
   cp * $HOME/.local/share/fonts || cp * ~/.fonts || sudo cp * /usr/share/fonts/
   fc-cache -fv
   ```

- Some useful scripts are in .local/bin folder
- etc folder has X11 things to enable touchpad tapping and setting up screens (specific for my desktop)

I tried to keep comments in config files for reference and for you to modify as per your system.
