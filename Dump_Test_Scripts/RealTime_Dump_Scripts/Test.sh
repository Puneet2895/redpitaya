# Script to push EMI traces to cloud storage from redpitaya local memory.
# Manoj Gulati
# Energy Group
# IIIT-Delhi 
# DOM: 19/11/2015
##############################################################################

start=`date +%s`
a=11
while [ "$a" -lt 21  ] 
do
	#statements
	echo $start >> /Users/manojgulati/Documents/redpitaya/Dump_Test_Scripts/RealTime_Dump_Scripts/Data/"$a".csv
	start=`date +%s`
	#echo $start
	a=`expr $a + 1` 
done
echo 'Hello World'
b=$ ls /Users/manojgulati/Documents/redpitaya/Dump_Test_Scripts/RealTime_Dump_Scripts/Data/|wc -l
echo $b
