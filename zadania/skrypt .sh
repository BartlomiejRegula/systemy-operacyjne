#!/bin/bash

# Funkcja wyboru stacji radiowej
wybierz_stacje() {
    echo "Wybierz stację radiową:"
    echo "1. Radio ZET"
    echo "2. RMF FM"
    echo "3. TOK FM"

    read -p "Podaj numer stacji: " numer_stacji

    case $numer_stacji in
        1) stream_url="http://playerservices.streamtheworld.com/api/livestream-redirect/RADIOZET.mp3" ;;
        2) stream_url="https://www.rmf.fm/listen/embed/rmffmpl.pls" ;;
        3) stream_url="https://waw03.ic3.shoutcast.com/tokfm" ;;
        *) echo "Niepoprawny numer stacji. Wybierz ponownie." && wybierz_stacje ;;
    esac
}

# Funkcja zapisu strumienia do pliku
zapisz_do_pliku() {
    read -p "Podaj nazwę pliku do zapisu (bez rozszerzenia): " nazwa_pliku
    wget -O "${nazwa_pliku}.mp3" "$stream_url"
}

# Wybór stacji i zapis do pliku
wybierz_stacje
zapisz_do_pliku

