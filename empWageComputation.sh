#! /bin/bash

perHrWage=20

calDailyEmpWage()
{
	if [ $((RANDOM%2)) -eq 1 ]
	then
		echo "Employee present"
		empHr=8
	else
		echo "Employee Absent"
	        empHr=0
	fi
}

main()
{
	calDailyEmpWage
}

main

salary=$(( $perHrWage * $empHr ))
echo "Employee daily salary is $salary"
