#!/bin/bash
#amount is the amount you want to commit
while getopts d:s o
do case "$o" in
				a)	$amount="$OPTARG";;
				[?]) echo "Usage: $0 [-a the amount you want to commit]"
						 exit 1;;
esac
done
$gitspammer -a "$amount" "$@"
echo $amount
