#!/bin/bash

if [ $1 ]
then 
	# stocker le paramètre dans une variable
 	fichier=$1 
else
	# nom du fichier
	read -p "renseigner le nom du fichier : " fichier
fi
if [ -f $fichier ]
then
	# le fichier existe 
	while read id prenom nom mdp role
	do
	echo "$id:$prenom:$nom:$mdp:$role"
	done <$fichier
else
	# le fichier n'existe pas
	echo "le fichier $fichier n'hexiste pas"
fi

