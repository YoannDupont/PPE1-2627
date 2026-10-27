#!/usr/bin/env bash

ANNEE="$1"
MOIS="$2"
NB="$3"

ls -1 ann/$ANNEE/201?_${MOIS}_*.ann | wc -l
cat ann/$ANNEE/201?_${MOIS}_*.ann | grep Location | cut -f3 | sort | uniq -c | sort -n | tail -n "$NB"
