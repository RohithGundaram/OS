echo "Enter Number: "
read n
a=0
b=1
for((i=0;i<n;i++))
do
	echo $a
	f=$(($a+$b))
	a=$b
	b=$f
done

