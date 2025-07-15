#!/bash/sh

# Taildrop script to save a file

echo "Tailscale FileSystem"
echo "[password]" | sudo sudo tailscale file get /home/[user]/Downloads/Tailscale
echo "[password]" | sudo chown -R [user] /home/[user]/Downloads/Tailscale