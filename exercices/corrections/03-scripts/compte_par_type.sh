#!/usr/bin/env bash

TYPE="$1"
ANNEE="$2"

cat ann/$ANNEE/*.ann | grep "$TYPE" | wc -l
