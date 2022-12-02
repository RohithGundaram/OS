echo -n "Enter a Number: "
read a
while [ $a != 0 ];
do
	echo $a
	((a--))
done
echo "Program Done!!!"
