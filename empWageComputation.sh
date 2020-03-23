#! /bin/bash -x

perHrWage=20
fullTimeEmp=1
partTimeEmp=2
daysPerMonth=20
totalSalary=0
totalHr=0
maximumHr=100
day=1
declare -A arrayForWage

calDailyAndTotalWage()
{
        while [ $totalHr -le $maximumHr -a $day -le $daysPerMonth ]
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

                totalHr=$(( $totalHr + $empHr ))
		salary=$(( $perHrWage * $empHr ))
		totalSalary=$(( $totalSalary + $salary ))
		arrayForWage[$day]="$salary $totalSalary"
		echo "Wage day $day is " $salary
		arrayForWage[totalSalary]="$totalSalary"
		echo "Day $day wages along with total wages " ${arrayForWage[$day]}
                ((++day))
        done
}

main()
{
        calDailyAndTotalWage
}

main
