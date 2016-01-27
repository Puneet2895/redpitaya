
# Script to SCP data after collecting continous stream of real time data specifically for fusion with smart meter data
# Manoj Gulati
# Energy Group
# IIIT-Delhi 

# Please change the IP address to the actual IP address of your machine where data is being logged

scp /mnt/storage/Plug/*.csv manojgulati@192.168.11.2:Databin/>/dev/NULL
rm -rf /mnt/storage/Plug/*.csv