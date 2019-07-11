# Builder NightFury

Inspired in Will Haley build for i386 but adapted to amd64
https://willhaley.com/blog/custom-debian-hard-drive-install/ 
Will Haley 

## 1.- Initial script will download all the required files.
    ./01_pre_reqs.sh
## 2.- Customize the os_config.txt & configuration settings for your distro 
Update your installation FOLDER, DISTRO_NAME and VERSION
    ./02_debootstrap.sh
## 3.- Start executing the scripts in order.
    ./03_chroot.sh
### Select Which Distro you like to Build...
In script 03 you can determine the packages to install Additionally multiple files added for Text Only or some Window Manager.

		  ./03_chroot_awesome.sh
		  ./03_chroot_cinnamon.sh
		  ./03_chroot_dde.sh *Not yet available* 
		  ./03_chroot_e17.sh
		  ./03_chroot_gnome.sh
		  ./03_chroot_i3.sh
		  ./03_chroot_kde.sh
		  ./03_chroot_lxde.sh
		  ./03_chroot_lxqt.sh
		  ./03_chroot_mate.sh
		  ./03_chroot_openbox.sh
		  ./03_chroot_pantheon.sh
		  ./03_chroot_plasma.sh
		  ./03_chroot_xfce.sh

  
## 4.- Option to built BIOS+UEFI for compatibility.
    ./04_MakeSquashfs.sh
## 5.- The result ISO Image will be from 200MB Text Only to 300MB LXDE
    ./05_BiosUEFI_ISO.sh
## 6.- Copy the ISO and boot from it 😀👍
#     ENJOY IT

