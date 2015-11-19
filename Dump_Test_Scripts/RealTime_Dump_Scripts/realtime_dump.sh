# Script to push EMI traces to cloud storage from redpitaya local memory.
# Manoj Gulati
# Energy Group
# IIIT-Delhi 
# DOM: 19/11/2015
##############################################################################

start=`date +%s`
Path="/mnt/storage/Plug/"

b=$ ls $Path|wc -l
echo $b
c="$(ls $Path| head -n 2)"

for i in ${c[@]}; do
	echo $Path$i
	scp $Path$i manojgulati@192.168.1.3:Databin
	rm -rf $Path$i
done

b=$ ls $Path|wc -l
echo $b
