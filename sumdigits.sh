s=0
echo "Enter a Number :"
read num

while [ $num -gt 0 ];
do
	k=$(($num % 10))
	num=$(($num / 10))
	s=$(($s+$k))
done
echo "Sum of digits of $g is : $s"
