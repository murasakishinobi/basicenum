#!/bin/bash

if [[ $# -eq 0 ]]
then
	echo -e "";
	echo "Usage: ./basicenum.sh -tag ip";
	echo "Example: ./basicenum.sh -d 127.0.0.1";
	echo "Use -h for help";
	echo -e "";
	exit 1;
fi

if [[ $1 == "-h" ]]
then
	echo -e "";
	echo "Available commands:";
	echo "-d: Default Scan";
	echo "-p: All Ports Scan";
	echo -e "";
	exit;
fi

echo -e "";
echo "[*] Running Basic Enumeration...[*]";
echo -e "";

if [ ! -d "nmap" ]
then
	mkdir nmap;
fi

if [[ $1 == "-d" ]]
then
	nmap -sC -sV $2 -o nmap/defaultscan.txt;
	exit;
elif [[ $1 == "-p" ]]
then
	nmap -p- -o nmap/portscan.txt $2;
	exit
fi





