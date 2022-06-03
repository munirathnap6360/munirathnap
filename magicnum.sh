echo "The number n between 1 to 100"
lower=1
upper=100
guess=0

while (( guess == 0))
do
	magic_num=$(( ($lower + $upper) / 2))
	echo "Enter your option: "
	echo "1 if n is less than $magic_num"
	echo "2 if n is equals to $magic_num"
	echo "3 if n is greater than $magic_num"
	read options

	if (( options == 1 ))
	then 
		upper=$(( $magic_num - 1 ))
	elif (( options == 2 ))
	then
		guess=1
		echo "Guess number is $magic_num"
	elif (( options == 3 ))
	then
		lower=$(( $magic_num + 1))
	else
		echo "please enter 1 or 2 or 3"
	fi
done

