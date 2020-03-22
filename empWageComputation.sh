#! /bin/bash -x

perHrWage=20
fullTimeEmp=1
partTimeEmp=2
daysPerMonth=20
totalSalary=0
totalHr=0
maximumHr=100
days=0

calEmpMonthlyWage()
{
        while [ $totalHr -le $maximumHr -a $days -le $daysPerMonth ]
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
                totalHr=$(( $totalHr + $empHr ))
                ((++days))
        done
}

main()
{
        calEmpMonthlyWage
}

main
echo "Employee total Salary Per Month is $totalSalary"
