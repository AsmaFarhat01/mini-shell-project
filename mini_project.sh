#!/bin/bash
#
############
#postive/negative/zero check

while true
do
	echo "Choose an option:"
	echo "1) Postive/negative/zero or even/odd"
	echo "2)factorial of a number"
	echo "3)prime or not"
	echo "4)FizzBuzz"
	echo "5)Calculator (Add, Subtract, Multiply, Division)"
	echo "6)Exit"

	read -p "enter your choice:" choice
	
	case $choice in
	
	    1)
	  
			read -p "enter a input number:" num
		if (( num > 0));then
                    if(( num % 2 == 0 ));then
                         echo "The number is Positive and even"
                    else
                         echo "The number is Positive and odd"
                    fi
                elif (( num < 0 ));then
                      if(( num % 2 == 0 ));then
                           echo "The number is negative  and even"
                     else
                            echo "The number is negative  and odd"
                     fi

                elif ((num == 0 )); then
                        echo "The number is 0"
		fi
		;;
	      
	     2)
		     read -p "enter a number:" num
		     fact=1
		     for (( i=1; i<=num; i++ ))
		     do 
			     fact=$((fact * i ))
		     done
		     echo "Factorial of $num is $fact"
		     ;;

	      3)
		      read -p "enter a number:" n
		      if (( n <= 1 ));then
			      echo "$n is not a prime number"
		      else
			      is_prime=1
			      for((i=2;i*i<=n;i++));do
				      if ((n%1 ==0));then
				          is_prime=0
				          break
				       fi
			      done
			      if  (( is_prime == 1)); then
				      echo "$n is a prime number"
			       else
				       echo "$n is not a prime number"
			       fi
			   fi
			   ;;
	       
                4)
			for(( i=1;i<=20;i++));do
				if (( i % 15 == 0));then
					echo "FizzBuzz"
				elif (( i % 3 == 0));then
					echo "Fizz"
				elif (( i % 5 == 0));then
					echo "Buzz"
				else
					echo "$i"
				fi
			done
			;;

                 5)
			 echo "Enter first number:"
			 read num1
			 echo "Enter second number:"
			 read num2
			 echo "Choose operation : + - * /)"
			 read op

			 case $op in 
				 +)
					 result=$((num1 + num2))
					 echo "Result: $result"
					 ;;
				-)
					result=$((num1 - num2))
					echo "Result: $result"
					;;
				*)
					result=$((num1 * num2))
					echo "Result: $result"
					;;
				/)
					if [ $num2 -ne 0]; then
						result=$((num1 / num2))
						echo "Result: $result"
					else
						echo "Error: Division by zero not allowed."
					fi
					
			esac
			;;
		6)


		      echo "GoodBye!"
		      break
		      ;;


	      *)
		      echo "Invalid Choice! Try Again."
	esac

	echo "-----------------------------------------"
done




                   













