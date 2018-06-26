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
username="$3"
password="$4"
repo="$2"
