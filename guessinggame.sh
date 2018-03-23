echo ""
echo "Hello! Want to play a little guessing game?"
let status=1
while [[ $status = 1 ]]
do
	echo "How many files you think are in this directory?"	
	playgame () {
		read guess
		if [[ "$guess" -ne 3 ]]
		then
			if [[ "$guess" -gt 10 ]]
			then
				echo ""
				echo "Your number is too big! Please enter a number between 0 and 10:"
				playgame	
			elif [[ "$guess" -gt 3 ]] && [[ "$guess" -lt 10 ]]
			then	
				echo ""
				echo "Your number is too big. Please enter a smaller number:"	
				playgame	
			else [[ "$guess" -lt 3 ]]
				echo ""
				echo "Your number is way too too small. Please enter a larger number:"
				playgame		
			fi
		elif [[ "$guess" -eq 3 ]]
		then 
			echo ""
			echo "Congratulations! You are correct! You win!"	
			let status=2
			sleep 1.5
		else	
			echo "Please enter a valid number. The number must be an integer!"				
		fi
	}
	playgame		
done
echo ""
let count=5
while [[ count -gt 0 ]]
do
	echo "The progam will end in: $count"
	let count--
	sleep 1
done
echo ""
echo "Thank you for playing! Hope you enjoyed it!"
echo ""
