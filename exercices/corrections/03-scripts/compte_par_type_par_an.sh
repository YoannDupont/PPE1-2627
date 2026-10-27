#!/usr/bin/env bash

TYPE="$1"

echo "Nombre de $TYPE en 2016"
bash ./compte_par_type.sh "$TYPE" 2016
echo "Nombre de $TYPE en 2017"
bash ./compte_par_type.sh "$TYPE" 2017
echo "Nombre de $TYPE en 2018"
bash ./compte_par_type.sh "$TYPE" 2018
