echo -n "Enter A value: "
read a
echo -n "Enter B value: "
read b
echo 1 - Addition
echo 2 - Subtraction
echo 3 - Multiplication
echo 4 - Division
echo "Enter Operation: "
read op
case $op in 
	1) echo "Addition :" $(expr $a + $b);;
	2) echo "Subtraction :" $(expr $a - $b);;
	3) echo "Multiplication :" $(expr $a \* $b);;
	4) echo "Division :" $(expr $a / $b);;
	*) echo "It is not a choice"
esac
