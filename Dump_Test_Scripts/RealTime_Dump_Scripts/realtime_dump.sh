# Script to log continous stream of real time data specifically for fusion with smart meter data
# Manoj Gulati
# Energy Group
# IIIT-Delhi 
# DOM: 19th Nov, 2015
##############################################################################
start=`date +%s`
ts=`date +%s`

#echo "first echo: $ts, $start"
#dumps 100 files

# # # # Check decimation factor before running this script # # # # 

a=1
#echo "init"
while [ "$a" -lt 20 ]  
do 
 acquire 16384 8 > /mnt/storage/Plug/"$start.$a".csv
 #scp /mnt/storage/Plug/"$start.$a".csv manojgulati@192.168.11.2:Databin/>/dev/NULL
 a=`expr $a + 1`
 start=`date +%s`
 if [ [$start -gt $ts] ]
 then
 	a=1 && echo $start && ts=`date +%s`
 fi
done

#end=`date +%s`
#echo $end
#runtime=$((end-start))
#echo 'Dump'+$runtime
##############################################################################

#copies those 100 files, when you are on host machine

#scp -r /mnt/storage/Plug manojgulati@192.168.11.2:Databin > /dev/null
#rm -rf /mnt/storage/Plug
#mkdir /mnt/storage/Plug
################################################################################
