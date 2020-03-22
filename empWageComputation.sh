#! /bin/bash -x

perHrWage=20
fullTimeEmp=1
partTimeEmp=2
daysPerMonth=20
totalSalary=0

calEmpMonthlyWage()
{
	for (( i=1; i<=$daysPerMonth; i++  ))
	do
		random=$((RANDOM%3))
		case $random in
		$fullTimeEmp )
			empHr=8 ;;

		$partTimeEmp )
			empHr=4 ;;

		* )
			empHr=0 ;;
		esac

		salary=$(( $perHrWage * $empHr ))
		echo "Employee daily salary is $salary "
		totalSalary=$(( $salary + $totalSalary ))
	done
}

main()
{
	calEmpMonthlyWage
}

main
echo "Employee total Salary Per Month is $totalSalary"
