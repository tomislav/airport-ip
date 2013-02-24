#!/bin/sh                                                                       
                                                                                
IP=`snmpwalk -Os -c public -v 1 192.168.1.1 iso.3.6.1.2.1.4.20.1.1 IpAddress |             
    grep -E -v '(127.0.0|169.254.233|192.168.1.1)' |                        
    cut -d : -f 2 | 
 	sed 's/ //g'`                                           
                                                                                
echo $IP
