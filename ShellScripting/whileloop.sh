count=0
num=10

while [ $count -le $num ]
do 
	echo "The number is $num"
	echo "The count is $count"
	let count++
done
