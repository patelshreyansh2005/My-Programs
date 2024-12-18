clear

echo "enter range"
read range

if [ $range -lt 0 ]
then
    echo "enter posotive number"
    exit
fi

sum=0

for((i=1;i<=$range;i++))
do
    sum=$((sum+i*i))
done

echo
echo "$sum"
