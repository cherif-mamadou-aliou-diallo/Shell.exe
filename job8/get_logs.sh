#!/bin/bash

date_format=$(date +'%d-%m-%Y-%H:%M')

utilisateur="cherif"

number_connection=$(last "$utilisateur" | wc -l )

nom_fichier="number_connection-$date_format"

echo "$number_connection" >> "$nom_fichier"

tar -czf "Backup/$nom_fichier.tar" "$nom_fichier"

