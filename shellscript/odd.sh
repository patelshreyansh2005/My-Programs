clear

for a in {1..5}
do
    if [ $((a%2)) -ne 0 ]
    then
        echo $a
    fi
done