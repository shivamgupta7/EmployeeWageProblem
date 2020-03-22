#! /bin/bash

echo "Welcome to Employee Wage Computation Program."

checkEmpAttendance()
{
	if [ $((RANDOM%2)) -eq 1 ]
	then
		echo "Employee is present."
	else
		echo "Employee is absent."
	fi
}

main()
{
	checkEmpAttendance
}

main
