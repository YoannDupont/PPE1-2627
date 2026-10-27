#!/usr/bin/env bash

ANNEE="$1"
MOIS="$2"
NB="$3"

if (( "$#" != 3 )); then
	echo "cette commande requiert exactement 3 arguments" >&2
	exit
fi

if [ !  -d './ann' ]
then 
	echo "dossier 'ann' non trouvé" >&2
	exit 
fi

if [ ! -d "ann/$ANNEE" ]
then 
	echo "$ANNEE ne correspond à aucun dossier d'année" >&2
	exit
fi

NBFIC=$(ls -1 ann/$ANNEE/201?_${MOIS}_*.ann 2> /dev/null | wc -l )
if (( $NBFIC == 0 )) 
then 
	echo "pas de fichier trouvé pour $ANNEE / $MOIS" >&2
	exit
fi

if [[ ! "$NB" =~ ^[0-9]+$ ]]
then 
	echo "$NB n'est pas un nombre" >&2
	exit
fi
cat ann/$ANNEE/201?_${MOIS}_*.ann | grep Location | cut -f3 | sort | uniq -c | sort -n | tail -n "$NB"
