#! /bin/bash

perHrWage=20
fullTimeEmp=1
partTimeEmp=2

checkDailyWageUsingCase()
{
	Random=$((RANDOM%3))
	case $Random in
	$fullTimeEmp )
		empHr=8
		echo "Employee is present for full day.";;
	$partTimeEmp )
		empHr=4
		echo "Employee is present for part time.";;
	* )
		empHr=0
		echo "Employee is absent.";;
	esac
}

main()
{
	checkDailyWageUsingCase
}

main

salary=$(( $perHrWage * $empHr ))
echo "Employee daily salary is $salary"
