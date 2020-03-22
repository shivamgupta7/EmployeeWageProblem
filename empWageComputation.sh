#! /bin/bash -x

fullTimeEmp=1
partTimeEmp=2
daysPerMonth=20
totalHr=0
maximumHr=101
days=0

calEmpWorkHour()
{
        while [ $totalHr -lt $maximumHr -a $days -le $daysPerMonth ]
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
                ((++days))
        done
}

main()
{
        calEmpWorkHour
}

main
echo "Employee total working hour per month is $totalHr"
