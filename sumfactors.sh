echo -n "Enter a number: "
read n
sum=0
for (( i=1; i<=n; i++ ))
do
	if [ $(( $n % $i )) -eq 0 ]
	then
		sum=$(( $sum+$i ))
	fi
done
echo "sum of factors of $n is : $sum "
