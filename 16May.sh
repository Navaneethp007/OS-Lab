#! /bin/bash

# Program for tomorrow's lab

#  Write a menu driven shell script to do the following operations:
# 1) sort a list of numbers in ascending order
# 2) search for a particular number in the given array
# 3)to generate Fibonacci series of size n

menuchoice=0
while [ $menuchoice != 4 ]
do
    read -p "Enter your choice: " menuchoice
    case $menuchoice in 

        1) read -p "Enter the number of integers to be sorted: " n
           echo "Enter the numbers: " 
           read -a num
           for((i=0;i<n-1;i++))
           do
                for((j=i+1;j<n;j++))
                do
                     if [ ${num[i]} -gt ${num[j]} ]
                     then
                          temp=${num[i]}
                          num[i]=${num[j]}
                          num[j]=$temp
                     fi
                done
              done
            echo "Sorted numbers are:"
            echo "        ${num[*]}"
           ;;

        2)  read -p "Enter the number of elements in the array: " n
            echo "Enter the elements: " 
            read -a num
            echo "Enter the number to be searched"
            read num1
            flag=0
            for((i=0;i<n;i++))
            do
                if [ ${num[i]} == $num1 ]
                then
                    flag=1
                    echo "The number is found at index $i"
                    break
                fi
            done
            if [ $flag == 0 ]
            then
                echo "The number $num1 is not found in the array"
            fi
            ;;

        3)  echo "Enter the size of the series"
            read n
            echo "The Fibonacci series is: "
            num1=0
            num2=1
            for((i=0;i<n;i++))
            do
                echo $num1
                num2=$((num1 + num2))
                num1=$((num2 - num1))
            done
            ;;
        4) echo "Exiting...."
            ;;
        *) echo "Invalid choice"
           ;;
    esac
done    