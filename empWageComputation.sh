#! /bin/bash -x

perHrWage=20
fullTimeEmp=1
partTimeEmp=2
daysPerMonth=20
totalSalary=0
totalHr=0
maximumHr=100
days=1
declare -a arrayForWage

calDailyAndTotalWage()
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

                totalHr=$(( $totalHr + $empHr ))
		salary=$(( $perHrWage * $empHr ))
		totalSalary=$(( $totalSalary + $salary ))
		arrayForWage=( $salary $totalSalary )
		echo "Daily wages along with total wages " ${arrayForWage[@]}
                ((++days))
        done
}

main()
{
        calDailyAndTotalWage
}

main
