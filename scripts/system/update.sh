#!/bash/sh

#  Updates Arch Lunux or Arch based linux including pacman, aur and flatpak packages.

echo "Updating the system"
echo "[password]" | sudo -S whoami
yes | sudo pacman -Syu
yay -Su
flatpak update 