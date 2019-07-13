# NightFury - Debian Linux build from scratch with Debootstrap#
# Alvaro Samudio [ alvarosamudio@criptext.com ]

# ./03_chroot_extra.sh - Customize your Distro
# As root in chroot. Execute the script in a Terminal 


# Install Spotify
apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 931FF8E79F0876134EDDBDCCA87FF9DF48BF1C90
echo deb http://repository.spotify.com stable non-free | sudo tee /etc/apt/sources.list.d/spotify.list
apt update
apt install spotify-client
echo "Spotify installed"
# Install Steam
apt install steam
echo "Steam installed"

exit
