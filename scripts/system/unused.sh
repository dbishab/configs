#!/bash/sh

# Script to remove all unused packages and dependencies in Arch Lunux or Arch based linux.

echo "Primary Arch Unused Removal"
echo "[password]" | sudo -S whoami
echo "List of unused packages"
sudo pacman -Qdtq
echo "Removing unused packages"
sudo pacman -R $(pacman -Qdtq)
echo "Removing unused flatpak"
flatpak uninstall --unused