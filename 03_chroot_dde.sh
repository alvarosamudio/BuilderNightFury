# NightFury - Debian Linux build from scratch with Debootstrap#
# Alvaro Samudio [ alvarosamudio@criptext.com ]

# 03_chroot.sh - Customize your Distro
# As root in chroot. Execute the script in a Terminal 
# ./03_chroot.sh

# export LIVE_BOOT=LIVE_BOOT64
#source ./os_config.txt

#echo "debian-live" > /etc/hostname
#echo $DISTRO_NAME > /etc/hostname 

#apt-cache search linux-image

#apt-get update && \
#apt-get install -y --no-install-recommends \
#    linux-image-amd64 \    
#    live-boot \
#    systemd-sysv

#apt-get install -y --no-install-recommends \
#    network-manager net-tools wireless-tools wpagui \
#    curl openssh-server openssh-client tor privoxy gparted gpart \
#    blackbox xserver-xorg-core xserver-xorg xinit xterm \
#    screenfetch screen lxterminal vim \
#    nano && \
#apt-get clean

#wget http://packages.deepin.com/deepin/pool/main/d/deepin-keyring/deepin-#keyring_2019.01.09-1_all.deb
#dpkg -i deepin-keyring_2019.01.09-1_all.deb
#rm deepin-keyring_2019.01.09-1_all.deb
#echo "deb http://packages.deepin.com/deepin lion main contrib non-free" > /etc/#apt/sources.list.d/dde.list
#apt-get update
#apt-get install -y dde
#apt-get clean

#passwd root

echo " "
echo "Not yet availableg"
echo " "
exit
