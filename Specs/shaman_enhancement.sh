wget "https://raw.githubusercontent.com/simulationcraft/simc/bfa-dev/profiles/Tier23/T23_Shaman_Enhancement.simc" -O /t23Enh.txt 

declare -A AArray
while IFS== read var val ;do
    [[ "$var" =~ ^[A-Za-z_]*$ ]] && AArray[$var]=$val
  done </t23Enh.txt
echo ${AArray[MARX_BUILD_NO]}

#curl -X POST -H "Content-Type: application/json" \
#  -d '{ "apiKey": "blah", "type": "advanced", "advancedInput": "armory=us,malganis,seriallos"}' \
#  https://www.raidbots.com/sim
