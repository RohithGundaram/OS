echo "Enter a number"
read n
res=0
for (( i=0; i<=n; i++ ))
do
res=$(( $res+$i ))
done

echo "sum of $n numbers is : $res"
