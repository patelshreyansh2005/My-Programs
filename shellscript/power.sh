clear

echo "enter base"
read b

echo "enter power"
read p

ans=1

for((i=0;i<$p;i++))
do
    ans=$((ans*b))
done

echo
echo "$b^$p = $ans"