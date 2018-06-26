#!/bin/bash
#amount is the amount you want to commit
#while getopts d:s o
#do case "$o" in
#				a)	$amount="$OPTARG";;
#				u) $username="$OPTARG";;
#				[?]) echo "Usage: $0 [-a the amount you want to commit]"
#						 exit 1;;
#esac
#done
#"$0" -a "$amount ""$@"
amount="$1"
repo="$2"
cd $repo
git pull
touch spamfile
git config credential.helper store
for ((i=1; i<=$amount; i++))
do
	echo "spam" >> spamfile
	git add *
	git commit -m "Spam"
	git push
done
