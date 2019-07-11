# NightFury - Debian Linux build from scratch with Debootstrap#
# Alvaro Samudio [ alvarosamudio@criptext.com ]

# 03_chroot.sh - Customize your Distro
# As root in chroot. Execute the script in a Terminal 
# ./03_chroot_lxde.sh

# export LIVE_BOOT=LIVE_BOOT64
source ./os_config.txt

#echo "debian-live" > /etc/hostname
echo $DISTRO_NAME > /etc/hostname 

apt-cache search linux-image

apt-get update && \
apt-get install -y --no-install-recommends \
    live-boot \
    systemd-sysv

apt-get install -y --no-install-recommends \
    network-manager net-tools wireless-tools wpagui \
    curl openssh-server openssh-client tor privoxy \
    xserver-xorg-core xserver-xorg xinit xterm \
    screenfetch screen lxterminal vim \
    cinnamon-desktop-environment \
    nano && \
apt-get clean

#echo "exec cinnamon-session" > /root/.xinitrc
#chmod 755 /root/.xinitrc

#echo "user-session=cinnamon" >> /etc/lightdm/lightdm.conf

echo -e "127.0.0.1\tlocalhost" > /etc/hosts
echo -e "127.0.0.1\tOS" >> /etc/hosts

passwd root

exit
