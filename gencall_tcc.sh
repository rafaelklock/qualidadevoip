#!/bin/bash

calltmp="/tmp/call_${RANDOM}_tmp.call"

echo "Channel: Local/provedor1"		>  $calltmp
echo "CallerID: provedor1"     		>> $calltmp
echo "MaxRetries: 2"                    >> $calltmp
echo "RetryTime: 40"                    >> $calltmp
echo "WaitTime: 40"                     >> $calltmp
echo "Context: tocaaudio"               >> $calltmp
echo "Extension: s"		        >> $calltmp
echo "Priority: 1"                      >> $calltmp

mv $calltmp /var/spool/asterisk/outgoing/
