clear

echo "enter range"
read range

if [ $range -lt 0 ]
then
    echo "enter posotive number"
    exit
fi
if [ $range -gt 0 ]
then
    echo "1"
fi
if [ $range -gt 1 ]
then
    echo "1"
fi

l=1
r=1

for((i=3;i<$range;i++))
do
    echo $((l+r))
    r=$((l+r))
    l=$((r-l))
done