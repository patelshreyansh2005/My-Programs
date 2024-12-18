echo "Enter number 1"
read a
echo "Enter number 2"
read b
echo "Enter number 3"
read c

if [ $a -gt $b ]
then
    if [ $a -gt $c ]
    then
        echo "$a is largest"
    else
        echo "$b is largest"
    fi
else
    if [ $b -gt $c ]
    then
        echo "$b is largest"
    else
        echo "$c is largest"
    fi
fi