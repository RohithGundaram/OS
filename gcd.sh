echo -n "Enter A:"
read a
echo -n "Enter B:"
read b
for (( i=$a; i>1; i-- ))
do
if [ $(($a % $i)) -eq 0 ] && [ $(($b % $i)) -eq 0 ]
then
    echo "GCD is : $i"
    exit 0
fi
done
echo "GCD is : $i"
