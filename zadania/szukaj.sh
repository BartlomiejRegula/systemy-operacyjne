
# Sprawdzenie czy podano jeden argument
if [ "$#" -ne 1 ]; then
    echo "Użycie: $0 <ciąg_znaków>"
    exit 1
fi

ciag_znakow="$1"

# Wyszukanie osób spełniających podane kryterium (bez względu na wielkość liter) i wyświetlenie ich
znalezione=$(grep -i "$ciag_znakow" lista.txt)
echo "$znalezione"

# Zliczenie liczby osób spełniających kryterium
liczba_osob=$(grep -ic "$ciag_znakow" lista.txt)

# Wyświetlenie komunikatu z liczbą osób spełniających kryterium
echo "Znaleziono ${liczba_osob} osób spełniających szukane kryterium"

