
#!/bin/bash
timestamp=$(date +%d_%m_%y_%H_%M_%S) #log for every second
timestamp2=$(date +%d_%m_%y_%H_%M) #log for every minutes
timestamp3=$(date +%d_%m_%y_%H) #log for every Hours
timestamp4=$(date +%d_%m_%y) #log for every day
timestamp5=$(date +%m_%y) #log for every month
timestamp6=$(date +%y) #log for every year

echo "This is second  data to log file" >> ${timestamp}.log
echo >> ${timestamp}.log
echo "data second written to log file successfully"

echo "This is minut data to log file" >> ${timestamp2}.log
echo >> ${timestamp2}.log
echo "data minut written to log file successfully"

echo "This is hour data to log file" >> ${timestamp3}.log
echo >> ${timestamp3}.log
echo "data hour written to log file successfully"

echo "This is day data to log file" >> ${timestamp4}.log
echo >> ${timestamp4}.log
echo "data day written to log file successfully"

echo "This is month data to log file" >> ${timestamp5}.log
echo >> ${timestamp5}.log
echo "data month written to log file successfully"

echo "This is year data to log file" >> ${timestamp6}.log
echo >> ${timestamp6}.log
echo "data year written to log file successfully"
