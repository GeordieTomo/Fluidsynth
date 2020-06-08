#!/bin/bash


killall fluidsynth

cd inst
ls
read -p "instrument: " CONFIG
cd ..

fluidsynth -si -p "fluid" -C0 -R0 -r48000 -c2 -z1024 -d -f inst/$CONFIG -a alsa -m alsa_seq &

sleep 3

keylab=$(aconnect -o | grep "Arturia KeyLab Essential 61")
nano=$(aconnect -o | grep "nanoKEY2")
kontrol=$(aconnect -o | grep "nanoKONTROL2")

if [[ $kontrol ]]
then
aconnect 'nanoKONTROL2':0 'fluid':0
echo nanoKONTROL2 connected
fi

if [[ $keylab ]]
then
aconnect 'Arturia KeyLab Essential 61':0 'fluid':0
echo keylab connected
fi


if [[ $nano ]]
then
aconnect 'nanoKEY2':0 'fluid':0
echo nanoKEY2 connected
fi

exit
