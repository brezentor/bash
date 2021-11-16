#!/bin/bash
#Getting size of all.log and cisco.log
statall=`stat -c %s /var/log/remote/all.log`
statcisco=`stat -c %s /var/log/remote/cisco*.log`
#limit 500 Mb
l=524288000
#checking and clearing logs
if [ "$statall" -gt "$l" ]; then
echo -n "all.log was cleared at " > /var/log/remote/all.log
date >> /var/log/remote/all.log
else
echo "no need to clean all.log" >> /var/log/remote/all.log
date >> /var/log/remote/all.log
fi
if [ "$statcisco" -gt "$l" ]; then
echo -n "cisco.log was cleared at " > /var/log/remote/cisco*.log
date >> /var/log/remote/cisco*.log
else
echo "no need to clean cisco.log" >> /var/log/remote/cisco*.log
date >> /var/log/remote/cisco*.log
fi
