echo "Enter number"
read n

sum=0
for(($i=1;$i<=$n;$i++))
do
    $sum=echo "$(($sum+$i))"
done
echo "$sum"
echo "$(($sum/$n))"