#!/bin/bash

# Ścieżka do katalogu na dysku zewnętrznym
sciezka_zewnetrzna="/ścieżka/do/katalogu/na/dysku/zewnętrznym"

# Sprawdzenie czy istnieje katalog pobrane
if [ ! -d "Pobrane" ]; then
    echo "Katalog 'pobrane' nie istnieje."
    exit 1
fi

# Nazwa pliku kopii z datą
data=$(date +"%Y.%m.%d")
nazwa_pliku="backup_${data}"

# Wykonanie kopii zawartości katalogu pobrane do katalogu na dysku zewnętrznym z dodaniem daty
cp -r pobrane "${sciezka_zewnetrzna}/${nazwa_pliku}"

echo "Kopia zawartości katalogu 'pobrane' została wykonana i zapisana jako '${nazwa_pliku}' na dysku zewnętrznym."

