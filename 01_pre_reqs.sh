# NightFury - Debian Linux build from scratch with Debootstrap#
# Alvaro Samudio [ alvarosamudio@criptext.com ]

# As root Execute the following command in a Terminal to get started the 

apt install -y screenfetch
apt install -y net-tools
apt install -y openssh-server
apt install -y debootstrap
apt install -y squashfs-tools
apt install -y xorriso
apt install -y grub-pc-bin
apt install -y grub-efi-amd64-bin
apt install -y mtools

echo " "
echo "Edit  ./os_config.txt to customize your Distro Settings"
echo "Execute ./02_debootstrap.sh"
echo " "
