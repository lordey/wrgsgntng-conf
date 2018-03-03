#!/bin/bash
#Script auto create trial user SSH
#yg akan expired setelah 1 hari
#Builder Dey Agustian

IP=`dig +short myip.opendns.com @resolver1.opendns.com`

Login=trial`</dev/urandom tr -dc X-Z0-9 | head -c4`
hari="1"
Pass=`</dev/urandom tr -dc a-f0-9 | head -c9`

useradd -e `date -d "$hari days" +"%Y-%m-%d"` -s /bin/false -M $Login
echo -e "$Pass\n$Pass\n"|passwd $Login &> /dev/null
echo -e ""
echo -e "====TRIAL ACCOUNT===="
echo -e "Host: $IP" 
echo -e "Port OpenSSH		: 22,444"
echo -e "Port Dropbear		: 110,109,22507,53"
echo -e "Port STUNNEL/SSL	: 443"
echo -e "Port Squid			: 80,8080"
echo -e "Username			: $Login"
echo -e "Password			: $Pass\n"
echo -e "========================="
echo -e "Builder: Dey Agustian"
echo -e ""