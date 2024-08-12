#!/bin/bash

#You have been tasked with creating a basic calculator program in Bash that can perform addition, subtraction, multiplication, and division. 
#The calculator will take two integer inputs from the user and then ask the user which operation they would like to perform. 
#Based on the user's choice, the script will perform the corresponding operation and display the result to the user. 

#Make sure to research basic arithmetic operations in bash. 
#Also don't forget to think about user experience, it’s one thing for things to go right, 
#but what happens when things go wrong ;)

#Requirements:

# Use read to take input from the screen. 
#The script should prompt the user to enter two integers.
#Use conditionals ('if`, `elif`, `else') to perform the chosen operation.
#Display the result of the operation.
#Handle division by zero with an appropriate error message.


#Welcome the user to the calculator
echo "Hello! Welcome to Joe's Bash Calculator. We do arithmetic, right and quick!" 

#Explaining the calculator capacity
echo "The current version can handle two integers and perform 4 basic operations."

#Prompting user to enter their first integer and using read -p to collect the first integer as a variable
read -p "What integers would you like to select? Let's start with the first integer:" int_one

#Checking input is a non-zero integer
until [[ $int_one =~ ^-?[1-9][0-9]*$ ]]
do
	read -p "Non-zero integers only, please. Let's try again:" int_one
done

#Acknoledge first input and request a second input
read -p "Thank you for the first integer $int_one! Time for the second integer:" int_two

#Checking input is a non-zero integer
until [[ $int_two =~ ^-?[1-9][0-9]*$ ]]
do
	read -p "Non-zero integers only, please. Let's try again:" int_two
done

#Prompting user to select an operation
echo "What operation would you like to perform with $int_one and $int_two?"

#Explaing the operation choices and collecting the operation as a variable
read -p "Please choose from the 4 options: + (addition), - (subtraction), * (multiplication), or / (division):" operation

#Checking input is an operation
until [[ $operation == "+" || $operation == "-" || $operation == "*" || $operation == "/" ]]
do
	read -p "Please select one of the four operations (+, -, *, /). Ready, set, go!:" operation
done

#Addition
if [[ $operation == "+" ]]
then 
	result=$((int_one + int_two))
#Subtraction	
elif [[ $operation == "-" ]]
then 
	result=$((int_one - int_two))
#Multipication
elif [[ $operation == "*" ]]
then 
	result=$((int_one * int_two))
#Division
elif [[ $operation == "/" ]]
then 
	result=$((int_one / int_two))
fi

#Displaying the result of the user's problem
echo "Awesome! The result of $int_one $operation $int_two is $result !"

#Thanking the user
echo -e "Thank you for using Joe's Bash Calculator. Let me know your thoughts!\nEmail me @joekuralabs@gmail.com\nHappy calculating!"
