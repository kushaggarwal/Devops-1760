echo "Enter the value for A"
read a
echo "Enter the value for B"
read b
if [ $a == $b ]
then 
	echo "a and b are equal to each other"
elif [ $a -gt $b ]
then
	echo "a is greated than b"
elif [ $a -lt $b ]
then 
	echo  "a is less than b"
else 
	echo "It is invalid input"
fi
