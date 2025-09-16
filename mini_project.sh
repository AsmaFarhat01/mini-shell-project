#!/bin/bash
#
############
#postive/negative/zero check

while true
do
	echo "Choose an option:"
	echo "1) Postive/negative/zero or even/odd"
	echo "2)factorial of a number"
	echo "3)Exit"
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
		      echo "GoodBye!"
		      break
		      ;;


	      *)
		      echo "Invalid Choice! Try Again."
	esac

	echo "-----------------------------------------"
done




                   













