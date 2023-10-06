#!/bin/bash

# Vérifiez qu'il y a deux arguments passés au script
if [ "$#" -ne 2 ]; then
    echo "Utilisation : $0 <nombre1> <nombre2>"
    exit 1
fi

# Récupérez les deux nombres à additionner à partir des arguments
nombre1="$1"
nombre2="$2"

# Effectuez l'addition
resultat=$(($nombre1 + $nombre2))

# Affichez le résultat
echo "Résultat de l'addition : $resultat"


