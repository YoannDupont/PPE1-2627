#!/usr/bin/env bash

if [ !  -d './ann' ]
then 
	echo "dossier 'ann' non trouvé" >&2
	exit 
fi


echo "Annotations en 2016:" 
cat ann/2016/*.ann | grep Location | wc -l 
echo "Annotations en 2017:" 
cat ann/2017/*.ann | grep Location | wc -l 
echo "Annotations en 2018:" 
cat ann/2018/*.ann | grep Location | wc -l 

