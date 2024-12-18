clear

echo "enter range"
read r

if [ $r -lt 0 ]
then
    echo "enter posotive number"
    exit
fi
if [ $r -gt 0 ]
then
    echo "1"
fi
if [ $r -gt 1 ]
then
    echo "2"
fi
if [ $r -gt 2 ]
then
    echo "3"
fi

for((i=5;i<$r;i++))
do
    isPrime=1
    for((j=2;j<$((i/2));j++))
    do
        if [ $((i%j)) -eq 0 ]
        then
            isPrime=0
            break
        fi
    done
    if [ $isPrime -eq 1 ]
    then
        echo "$i"
    fi
done