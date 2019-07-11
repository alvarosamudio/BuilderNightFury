# NightFury - Debian Linux build from scratch with Debootstrap#
# Alvaro Samudio [ alvarosamudio@criptext.com ]

# os_clean.sh - Clean OS Installation
# As user Execute the script in a Terminal 

# export LIVE_BOOT=LIVE_BOOT64
source os_config.txt

sudo rm -R -f $HOME/$LIVE_BOOT

sudo rm -R -f ./0*.sh
sudo rm -R -f ./*.txt
