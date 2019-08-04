#!/usr/bin/env/bash
# File: guessinggame.sh

numFiles=$(ls -1q | wc -l)
guessFiles() {
	read -p "How many files are in the directory?: " guessNum
	re='^[0-9]+$'
	if ! [[ $guessNum =~ $re ]] ; then
		echo "Error: Not a number"
		return 1;
	fi
	if [ $guessNum -gt $numFiles ] ; then
		echo "Too high"
		return 1;
	elif [ $guessNum -lt $numFiles ] ; then
		echo "Too low"
		return 1;
	else
		echo "You guessed it! $numFiles files in directory"
		return 0;
	fi
}
until guessFiles;
do
	: ;
done
