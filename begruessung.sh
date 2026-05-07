#!/bin/bash
if [ -z "$1" ]; then
  echo "Fehler: Kein Argument angegeben!"
  echo "Bitte rufen Sie das Skript wie folgt auf: ./begruessung.sh <IhrName>"
else
  echo "Hallo $1! Sie haben das Skript erfolgreich mit einem Argument ausgeführt."
fi
