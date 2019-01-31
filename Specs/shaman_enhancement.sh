wget "https://raw.githubusercontent.com/simulationcraft/simc/bfa-dev/profiles/Tier23/T23_Shaman_Enhancement.simc" -O /t23Enh.txt 
index=0
cat /t23Enh.txt | while read line; do
    MYARRAY[$index]="$line\R\N"
    index=$(($index+1))
done

curl -X POST -H "Content-Type: application/json" \
  -d '{ "apiKey": "blah", "type": "advanced", "advancedInput": 
"for i in "${array[@]}"
do
	echo $i
done"}' \
  https://www.raidbots.com/sim
