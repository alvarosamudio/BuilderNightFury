# NightFury - Debian Linux build from scratch with Debootstrap#
# Alvaro Samudio [ alvarosamudio@criptext.com ]

# ./03_chroot_extra.sh - Customize your Distro
# As root in chroot. Execute the script in a Terminal 

##WELCOME##
#########################
##START WELCOME MESSAGE##
#everything before this is a function and functions have to be defined before they can be used
#so the welcome message MUST be placed at the end of the script
	clear && echo ""
echo " _____________________________________________________ "
echo "|     _   _ _       _     _   _____                   \ "
echo "|    | \ | (_) __ _| |__ | |_|  ___|   _ _ __ _   _    |"
echo "|    |  \| | |/ _` | '_ \| __| |_ | | | | '__| | | |   |"
echo "|    | |\  | | (_| | | | | |_|  _|| |_| | |  | |_| |   |"
echo "|    |_| \_|_|\__, |_| |_|\__|_|   \__,_|_|   \__, |   |"
echo "|             |___/                           |___/    |"
echo "\______________________________________________________|"
echo ""
mainmenu
##END WELCOME MESSAGE##
#######################
##/WELCOME##

##MAINMENU##
##################
##START MAINMENU##
mainmenu()
{
#build a main menu using bash select
#from here, the various sub menus can be selected and from them, modules can be run
mainmenu=("Browser" "Music" "Video" "Games" "System" "Hacking" "Quit")
select opt in "${mainmenu[@]}"; do
	if [ "$opt" = "Quit" ]; then
	echo "Quitting!" && sleep 1 && clear
	exit 0
	elif [ "$opt" = "Browser" ]; then
browser
	elif [ "$opt" = "Music" ]; then
music
    elif [ "$opt" = "video" ]; then
video
  	elif [ "$opt" = "Games" ]; then
Games
  	elif [ "$opt" = "System" ]; then
system
  	elif [ "$opt" = "Hacking" ]; then
hacking
	else 
#if no valid option is chosen, chastise the user
	echo "That's not a valid option! Hit Return to show main menu"
	fi
done
}
##END MAINMENU##
################
##/MAINMENU##


# Install Spotify
##apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 931FF8E79F0876134EDDBDCCA87FF9DF48BF1C90
##echo deb http://repository.spotify.com stable non-free | sudo tee /etc/apt/sources.list.d/spotify.list
##apt update
##apt install spotify-client
##echo "Spotify installed"
# Install Steam
##apt install steam
##echo "Steam installed"

exit
