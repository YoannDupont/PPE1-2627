#!/usr/bin/env bash

TYPE="$1"
ANNEE="$2"

if (( "$#" != 2 )); then
	echo "cette commande requiert exactement 2 arguments" >&2
	exit
fi

if [ ! -d "ann/$ANNEE" ]
then 
	echo "$ANNEE ne correspond à aucun dossier d'année" >&2
	exit
fi

cat ann/$ANNEE/*.ann | grep "$TYPE" | wc -l
