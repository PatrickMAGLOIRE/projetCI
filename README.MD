configuration ssh des trois machines virtuelles (NEXUS, JENKINS, DATA/projet)
partage de la clé public 
ssh-keygen
modification des configuration dans l'onglet virtual network afin de pouvoir utiliser la commande PING et communiquer avec les autres machines.
ouverture du port 8081

firewall-cmd --permanent --add-port=8081/tcp
firewall-cmd --reload

installation de git
	-création du .git 
	-création de mon fichier README.MD et premier push (git push origine nom_de_la_branche)
	-création de la branche develop puis importation du projet 
	-création de ma branche feature/nom_du_developpeur
	
installation de maven 
	-modification du POM.xml et création du settings.xml 
	-
installation de jenkins



 