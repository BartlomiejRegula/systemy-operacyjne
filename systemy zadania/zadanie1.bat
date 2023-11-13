@echo off

net user Adam /delete
net user Kasia /delete

echo Dostępne hasła do wifi: > hasla_wifi.txt

Netsh wlan show profile name=”Wi-F name” key=clear
for /f "skip=9 tokens=1,2 delims=:" %i in ('netsh wlan show profiles') do @echo %j | findstr -i -v echo | netsh wlan show profiles %j key=clear >> hasła_wi-fi.txt

net user Magda Mag902 /add
net user Maciek Mac902 /add

pause 
