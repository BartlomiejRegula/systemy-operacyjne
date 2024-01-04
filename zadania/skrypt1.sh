#!/bin/bash

# Nazwa pliku raportu
plik_raportu="status systemu.txt"

# Zbieranie informacji o stanie systemu
echo "Zbieranie informacji o stanie systemu..."

# Zapisanie informacji do pliku raportu
{
    date
    echo "==============================="
    echo "Informacje o stanie systemu:"
    echo "==============================="
    uname -a
    echo "-----------------------------"
    df -h
    echo "-----------------------------"
    top -n 1 -b
} > "$plik_raportu"

echo "Informacje o stanie systemu zostały zapisane w: $plik_raportu"

