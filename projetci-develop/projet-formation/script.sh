#!/bin/bash 
#récupération de l'adresse ip de NEXUS dans une variable
NEXUS_URL=192.168.100.88
#DATA_PROJET_IP=192.168.100.46
#variables contenant le port de nexus, son user et son mdp
PORT_NEXUS=8081
NEXUS_USER=admin 
PASSWORD_NAXUS=admin123
#variables qui récupèrent les releases et les snapshots
SNAPSHOT=maven-snapshots
RELEASE=maven-release 

NEXUS_AUTH=$NEXUS_USER:$PASSWORD_NAXUS
NEXUS_URL_PORT=$NEXUS_URL:$PORT_NEXUS

if  [ $1 != "-SNAPSHOT" ] 

then 
 	echo "it's a RELEASE"
 	curl $RELEASE
else 
	echo "it's a SNAPSHOT" 
	curl $SNAPSHOT
fi	



set 


 	
ip=$(ifconfig ens33 | awk -F: '/inet adr:/ {print $2}' | awk '{ print $1 }')



scp /projet2/projetCI/projetci-develop/projet-formation/script.sh admin@NEXUS_URL.eastus.cloudapp.com:/home/azureuser/config