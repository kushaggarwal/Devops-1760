echo "Please enter your age to check eligibility"
read age

if [ $age -ge 18 ]
then
	echo "User is eligible to vote"
else
	echo "User is not eligible to vote"
fi 
