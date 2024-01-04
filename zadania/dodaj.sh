#!/bin/bash

if ["$#" -ne 2]; then
	echo "Użycie $0 <nazwisko> <imie>"
	exit 1
fi

nazwisko="$1"
imie="$2"

echo "${nazwisko} ${imie}" >> lista.txt

sort -o lista.txt lista.txt

cat lista.txt

liczba_osob=$(wc -l < lista.txt)

echo "Na liscie mamy ${liczba_osob} osob"
