#!/bin/bash

[ -z "$1" ] && echo missing job size && exit 1
echo "converting $1 files"

unoconv --version

pkill -f soffice
rm -rf ./pdf/*

connection="pipe,name=trytond;urp;StarOffice.ComponentContext"
unoconv --listener -c "$connection" &
disown
sleep 1

for i in $(seq 1 "$1")
do
  ( unoconv --no-launch -c "$connection" -f pdf -o "./pdf/$i.pdf" ./example.odt > /dev/null; echo "$i => $?" ) &
done

for pid in $(jobs -p)
do
  wait "$pid"
done

echo "$(find ./pdf -name "*.pdf" | wc -l)" pdf generated
