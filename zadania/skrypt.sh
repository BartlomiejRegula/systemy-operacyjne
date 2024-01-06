katalog_zrodlowy="/home/ubuntu/Pobrane"

if [ ! -d "$katalog_zrodlowy" ]; then
    echo "Katalog '$katalog_zrodlowy' nie istnieje."
    exit 1
fi

# użyłem katalogu dokumenty zamiast dysku zewnętrznego
katalog_zewnetrzny="/home/ubuntu/Dokumenty"

data=$(date +"%Y.%m.%d")

nazwa_katalogu="backup_${data}"

mkdir -p "${katalog_zewnetrzny}/${nazwa_katalogu}"

cp -r "${katalog_zrodlowy}/"* "${katalog_zewnetrzny}/${nazwa_katalogu}/"

echo "Zawartość katalogu 'pobrane' została skopiowana jako '${nazwa_katalogu}' na dysku zewnętrznym."

