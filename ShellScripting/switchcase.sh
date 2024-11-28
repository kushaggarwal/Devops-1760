echo "Please enter the option you would like to go with"
echo "a ---> Return the present date"
echo "b ---> Return the files in the current directory"

read choice

case $choice in 
	"a")date;;
	"b")ls;;
	*) echo "Your input is invalid"
esac
