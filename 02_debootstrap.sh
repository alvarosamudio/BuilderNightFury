# NightFury - Debian Linux build from scratch with Debootstrap#
# Alvaro Samudio [ alvarosamudio@criptext.com ]

# 02_debootstrap.sh - Debootstrap our Distro
# As user Execute the script in a Terminal 

# export LIVE_BOOT=LIVE_BOOT64
source os_config.txt

mkdir $HOME/$LIVE_BOOT

sudo debootstrap \
--arch=amd64 \
--variant=minbase \
buster \
$HOME/$LIVE_BOOT/chroot \
http://ftp.us.debian.org/debian

sudo cp ./03_*.sh $HOME/$LIVE_BOOT/chroot
sudo cp ./os_config.txt $HOME/$LIVE_BOOT/chroot

sudo chroot $HOME/$LIVE_BOOT/chroot
