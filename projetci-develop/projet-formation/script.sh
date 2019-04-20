#!/bin/bash 

NEXUS_URL=192.168.100.88
#DATA_PROJET_IP=192.168.100.46
PORT_NEXUS=8081
NEXUS_USER=admin 
PASSWORD_NAXUS=admin123

SNAPSHOT=maven-snapshots
RELEASE=maven-release 

NEXUS_AUTH=$NEXUS_USER:$PASSWORD_NAXUS
NEXUS_URL_PORT=$NEXUS_URL:$PORT_NEXUS

if  [ $1 != "-SNAPSHOT" ] 

then 
 	echo "it's a RELEASE"
 	
else 
	echo "it's a SNAPSHOT" 

fi	



set 


 	
ip=$(ifconfig ens33 | awk -F: '/inet adr:/ {print $2}' | awk '{ print $1 }')



scp /projet2/projetCI/projetci-develop/projet-formation/script.sh admin@NEXUS_URL.eastus.cloudapp.com:/home/azureuser/config