echo "'{ "apiKey": "1292e5796497e3a5973a9fa168314af7ca9dfa88f55b4d8d4fb7d7e28bd63a89", "type": "advanced", "advancedInput": " >> /data.txt
wget "https://raw.githubusercontent.com/simulationcraft/simc/bfa-dev/profiles/Tier23/T23_Shaman_Enhancement.simc" -O /download.txt
for ln in `cat /download.txt`; do
    echo "$ln" >> /data.txt
done
echo "}'" >> /data.txt

for ln in `cat /data.txt`; do
    echo "$ln"
done

#curl -X POST -H "Content-Type: application/json" \
#-d '{ "apiKey": "1292e5796497e3a5973a9fa168314af7ca9dfa88f55b4d8d4fb7d7e28bd63a89", "type": "advanced", "advancedInput": /t23Enh.txt}' \
#https://www.raidbots.com/sim
