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
#récupération de la valeur de la version pout savoir si cest une release ou une snapshot
if  [ $1 != "-SNAPSHOT" ] 
#si c'est une release alors on télécharge via nexus la release dans maven release
then 
 	echo "it's a RELEASE"
 		 curl -u admin:admin123 http://192.168.100.88:8081/repository/maven-releases/

else 
	echo "it's a SNAPSHOT" 
	 curl -u admin:admin123 http://192.168.100.88:8081/repository/maven-snapshots/
fi	


















#set 


 	
##ip=$(ifconfig ens33 | awk -F: '/inet adr:/ {print $2}' | awk '{ print $1 }')
#scp /projet2/projetCI/projetci-develop/projet-formation/script.sh admin@NEXUS_URL..........