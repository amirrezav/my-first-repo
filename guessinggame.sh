function readfiles {
	ls $1 | wc -l
}


echo "Guess the number of files in the current directory:"
read response
echo "You entered: $response"

numberoffiles=$(readfiles)

while [[ $response -ne $numberoffiles ]] 
do
	if [[ $response -gt $numberoffiles ]]
	then
		echo "Your guess is too high"
	fi	

	if [[ $response -lt $numberoffiles ]]
	then
		echo "Your guess is too low"
	fi
echo "Guess the number of files in the current directory:"
read response
echo "You entered: $response"
done

echo "Your guess is right. Congratulations"