# NightFury - Debian Linux build from scratch with Debootstrap#
# Alvaro Samudio [ alvarosamudio@criptext.com ]

# 03_chroot.sh - Customize your Distro
# As user. Execute the script in a Terminal 
# ./04_MakeSquashfs.sh

# export LIVE_BOOT=LIVE_BOOT64
source ./os_config.txt

sudo rm -f $HOME/$LIVE_BOOT/chroot/03_*.sh 
sudo rm -f $HOME/$LIVE_BOOT/chroot/os_config.txt 

mkdir -p $HOME/$LIVE_BOOT/{scratch,image/live}

sudo mksquashfs \
    $HOME/$LIVE_BOOT/chroot \
    $HOME/$LIVE_BOOT/image/live/filesystem.squashfs \
    -e boot

cp $HOME/$LIVE_BOOT/chroot/boot/vmlinuz-* \
    $HOME/$LIVE_BOOT/image/vmlinuz && \
cp $HOME/$LIVE_BOOT/chroot/boot/initrd.img-* \
    $HOME/$LIVE_BOOT/image/initrd

cat <<EOF >$HOME/$LIVE_BOOT/scratch/grub.cfg

search --set=root --file /DEBIAN_CUSTOM

insmod all_video

set default="0"
set timeout=30

menuentry "$DISTRO_NAME Live" {
    linux /vmlinuz boot=live quiet nomodeset
    initrd /initrd
}
EOF

touch $HOME/$LIVE_BOOT/image/DEBIAN_CUSTOM

ls -lh $HOME/$LIVE_BOOT
ls -lRh $HOME/$LIVE_BOOT/scratch
ls -lRh $HOME/$LIVE_BOOT/image

echo " "
echo "Execute ./05_BiosUEFI_ISO.sh"
echo " "
