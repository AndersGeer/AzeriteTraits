echo "{\"apiKey\": \"1292e5796497e3a5973a9fa168314af7ca9dfa88f55b4d8d4fb7d7e28bd63a89\", \"type\": \"advanced\", \"advancedInput\": \"" >> /data.txt
wget "https://raw.githubusercontent.com/simulationcraft/simc/bfa-dev/profiles/Tier23/T23_Shaman_Enhancement.simc" -O /download.txt
cat /download.txt | while read line; do
    echo "$line" | tr " \"" >> /data.txt
done
echo "\"}" >> /data.txt


#echo "{\"apiKey\": \"1292e5796497e3a5973a9fa168314af7ca9dfa88f55b4d8d4fb7d7e28bd63a89\", \"type\": \"advanced\", \"advancedInput\": \"armory=eu,draenor,shanyao\"}" > /data.txt

cat /download.txt | while read line; do
    echo "$line"     
done
# >> /data.txt
#curl -X POST -H "Content-Type: application/json" -d '{ "apiKey": "blah", "type": "advanced", "advancedInput": "armory=us,malganis,seriallos"}' https://www.raidbots.com/sim
#response=$(curl -X POST -H "Content-Type: application/json" -d @'/data.txt' --write-out %{http_code} --output /dev/null https://www.raidbots.com/sim)

#echo "$http_code"
#echo "$response"

#curl -X POST -H "Content-Type": "application/json" -d @/data.txt https://www.raidbots.com/sim
#-d "armory=ey,draenor,shanyao"
