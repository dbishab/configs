# ~/.bashrc

# Checks if the current shell is interactive and exits the script early (using return) if it is not interactive

[[ $- != *i* ]] && return

# Consists of aliases formed using the scripts below for Arch Linux and Arch based Linux.

#  Direct aliases

alias ls="ncdu" # Requires package [ncdu] and displays all the files and their respective sizes
alias install="yes | sudo pacman -S" 
alias remove="yes | sudo pacman -Rdd" # [pacman -Rdd] forcibly removes a package without checking for dependencies,.
alias neo="fastfetch" # needs package  [fastfetch] whose config can be found.
alias orp="pacman -Qdtq" # Lists oprhaned packages
alias band="sudo bandwhich" # Requires package [bandwhich] and displays the contents in terminal.
alias lock="sudo rm /var/lib/pacman/db.lck" # Removes package lock in system
alias cache="du -h /var/cache/pacman/pkg && du -hs /home/bishab/.cache" # Lists cache in Arch Linux or Arch based Linux
alias bishab="sshpass -p [password] ssh [user}@[address]" # Requires pacmage [sshpass] and replace the words in brackets
alias check="sudo pacman -S" # Checks the package and their dependencies using pacman; it is just install command without confirmation.
alias raw="sudo pacman -U" # Install a package from their local downloaded location.
alias z="exit" # Exits the current sitution
alias fremove="flatpak uninstall --delete-data" # Removes a flatpak package along with their data and config folder
alias x="gemini" # Requires [gemini-cli] package from Google.
alias fpak='flatpak --columns=name,size list' # List all the flatpak packages along with their size on another column.#
alias search="sudo pacman -Ss" # Searches through the pacman package list
alias list="flatpak list --app" # Lists all flatpak apps; ignores system packages
alias data="vnstat" # Displays unedited [ vnstat] data directly.
alias aur="yay" # Just a simple substitution of words.
alias band="bandwhich" # Displays the contents in terminal.
alias c="clear" # Clears the screen

#  Indirect aliases using scripts

# alias [name]="sh /{location of script}" => Alias format as below aliases are formatted to specific user and is located in specific location.

alias update="sh /home/bishab/Scripts/update.sh" # Updates the system using script 
alias unused="sh /home/bishab/Scripts/unused.sh" # Removes unused packages and dependencies 
alias t="sh /home/bishab/Scripts/tailscale.sh" # Taildrop script to save a file sent using the network
alias clean="sh /home/bishab/Scripts/clean.sh"  # Clears the cached file in Arch Linux and Arch based systems.
alias test="sh /home/bishab/Scripts/dig.sh"  # Ping most common 1000 pings made by devices.
alias d="sh /home/bishab/Scripts/data.sh" # Basic vnstat script tile to show monthly, daily and hourly internet usage of individual and combined interfaces.
alias nh="sh /home/bishab/Scripts/allhour.sh" # This is a basic  script that shows hourly internet usage by a interface named [wlan0] (which can be changed as user's requirement).
alias h="sh /home/bishab/Scripts/hour.sh" # Script to output hourly internet usage in all interface. [wlan0] and [tailscale0] can be changed as per your interface needs.

# iDrive Integration
alias idrive='/opt/IDriveForLinux/bin/idrive'
# Created by idrive as shortcut.