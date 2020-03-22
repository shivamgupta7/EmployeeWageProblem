#! /bin/bash

perHrWage=20

checkPartTimeEmp()
{
	Random=$((RANDOM%3))
	if [ $Random -eq 1 ]
	then
		echo "Employee is present for full day."
		empHr=8
	elif [ $Random -eq 2 ]
	then
		echo "Employee is present for part time."
		empHr=4
	else
		echo "Employee is absent."
	        empHr=0
	fi
}

main()
{
	checkPartTimeEmp
}

main

salary=$(( $perHrWage * $empHr ))
echo "Employee daily salary is $salary"
