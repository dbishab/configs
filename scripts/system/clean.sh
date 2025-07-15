#!/bash/sh
# Clears the cached file in Arch Linux and Arch based systems. replace the  [password]  such that yoi don't have to enter password manually everytime.
# Command [whoami] prints the user status and can be neglected here..
echo "Primary Arch Clean"
echo "{password}" | sudo -S whoami
yes | yay -Scc
yes | rm -r /home/[user}/.cache