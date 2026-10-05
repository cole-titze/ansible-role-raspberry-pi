# full-upgrade (not upgrade) so kernel/firmware packages aren't kept back.
sudo apt-get update -y && sudo DEBIAN_FRONTEND=noninteractive apt-get full-upgrade -y -o Dpkg::Options::=--force-confdef -o Dpkg::Options::=--force-confold
sudo reboot