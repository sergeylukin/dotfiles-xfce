############################
# Fetch repo and run setup script
############################

# Remove old dir
if [ -d ~/.dotfiles-xfce ]
then
  echo "Removing old ~/.dotfiles-xfce directory"
  rm -fr ~/.dotfiles-xfce
fi

# Clone repository
hash git >/dev/null && /usr/bin/env git clone https://github.com/sergeylukin/dotfiles-xfce.git ~/.dotfiles-xfce || {
  echo "Error: Git not installed"
  exit
}

# Back up ~/.config
if [ -d ~/.config ]
then
  echo "Backing up ~/.config directory to ~/.dotfiles-xfce/backup/"
  mv ~/.config ~/.dotfiles-xfce/backup/.config
fi
# Back up ~/.icons
if [ -d ~/.icons ]
then
  echo "Backing up ~/.icons directory to ~/.dotfiles-xfce/backup/"
  mv ~/.icons ~/.dotfiles-xfce/backup/.icons
fi
# Back up ~/.themes
if [ -d ~/.themes ]
then
  echo "Backing up ~/.themes directory to ~/.dotfiles-xfce/backup/"
  mv ~/.themes ~/.dotfiles-xfce/backup/.themes
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

