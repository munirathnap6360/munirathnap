

money=100
bet_amount=1

wonAmount=0
wonCount=0
bet_count=0

while (( $money != 0 && $money != 200 ))
do
	echo "The bet is: "
	bet=$((RANDOM%2))
	if (( $bet == 1))
	then
		echo "Won"
		(( money += $bet_amount ))
		(( wonCount++ ))
	else
		echo "Loose"
		(( money -= $bet_amount ))
	fi
	(( bet_count++))
done
echo "The final amount is $money"
echo "Number of bets made $bet_count"
echo "Number of times won are $wonCount"
