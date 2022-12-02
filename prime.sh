echo -n "Enter Number"
read n

for((i=2;i<=n/2;i++))
do
	if [ $((n%i)) -eq 0 ]
	then
		echo "$n is not a Prime No."
		exit
	fi
done
echo "$n is a Prime No."

