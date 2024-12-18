clear

echo "enter number"
read n

echo

if [ $n -lt 0 ]
then
    echo "enter posotive number"
    exit
fi

ans=1

for((i=1;i<=$n;i++))
do
    ans=$((ans*i))
done

echo "$ans"
echo