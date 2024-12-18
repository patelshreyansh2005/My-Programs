clear

echo "enter number"
read n

echo

if [ $n -lt 0 ]
then
    echo "enter posotive number"
    exit
fi

for((i=1;i<=$((n/2));i++))
do
    if [ $((n%i)) -eq 0 ]
    then
        echo "$i"
    fi
done

echo "$n"
echo