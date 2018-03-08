#!/bin/bash
#
# Copyright Dey Agustian
# ================================
# 

data=( `ps aux | grep -i openvpn | awk '{print $2}'`);

echo "Checking OpenVPN Login"
echo "======================================================"
cat /etc/openvpn/log443.log | grep 172.16
cat /etc/openvpn/log993.log | grep 172.16
cat /etc/openvpn/log1194.log | grep 172.16
cat /etc/openvpn/logudp.log | grep 172.16
echo "======================================================"
echo "Script By Dey Agustian";