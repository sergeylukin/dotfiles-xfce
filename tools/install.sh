############################
# Fetch repo and run setup script
############################

# Back up .dotfiles-xfce
if [ -d ~/.dotfiles-xfce ]
then
  echo "Backing up ~/.dotfiles-xfce directory to ~/.dotfiles-xfce_backup"
  mv ~/.dotfiles-xfce ~/.dotfiles-xfce_backup
  exit
fi

# Clone repository
hash git >/dev/null && /usr/bin/env git clone https://github.com/sergeylukin/dotfiles-xfce.git ~/.dotfiles-xfce || {
  echo "Error: Git not installed"
  exit
}

# Back up ~/.config
if [ -d ~/.config ]
then
  echo "Backing up ~/.config directory to ~/.config_backup"
  mv ~/.config ~/.config_backup
  exit
fi
# Back up ~/.icons
if [ -d ~/.icons ]
then
  echo "Backing up ~/.icons directory to ~/.icons_backup"
  mv ~/.icons ~/.icons_backup
  exit
fi
# Back up ~/.themes
if [ -d ~/.themes ]
then
  echo "Backing up ~/.themes directory to ~/.themes_backup"
  mv ~/.themes ~/.themes_backup
  exit
fi


ln -s ~/.dotfiles-xfce/config ~/.config
ln -s ~/.dotfiles-xfce/icons ~/.icons
ln -s ~/.dotfiles-xfce/themes ~/.themes

echo "     _                  _ "
echo "  __| | ___  _ __   ___| |"
echo " / _  |/ _ \|  _ \ / _ \ |"
echo "| (_| | (_) | | | |  __/_|"
echo " \__,_|\___/|_| |_|\___(_)"
echo "                          "

