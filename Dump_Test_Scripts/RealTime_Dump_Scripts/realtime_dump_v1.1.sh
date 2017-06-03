# Script to log continous stream of real time data specifically for fusion with smart meter data
# Manoj Gulati and Paras
# Energy Group
# IIIT-Delhi 
# DOM: 3rd June, 2017
##############################################################################
start=`date +%s`
ts=`date +%s`

echo "first echo: $ts, $start"
#dumps >=10 files every sec

# # # # Check decimation factor before running this script # # # # It should be 8 for Fs=15.625 MHz

difference=0
#echo "init"
while [ "$start" -gt 0 ]  
do 
 start=`date +%s`  
 difference=`expr $start - $ts`
 if [ $difference -gt 9 ]
 then
	acquire 16384 8 > /mnt/storage/Plug/"$start".csv && echo $start && ts=`date +%s`
 fi
done

#end=`date +%s`
#echo $end
#runtime=$((end-start))
#echo 'Dump'+$runtime
##############################################################################

#copies files, when you are on host machine

#scp -r /mnt/storage/Plug manojgulati@192.168.11.2:Databin > /dev/null
#rm -rf /mnt/storage/Plug
#mkdir /mnt/storage/Plug
################################################################################
