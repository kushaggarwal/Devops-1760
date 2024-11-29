#!/bin/bash

# Function to display menu options
show_menu() {
  echo "Choose an operation:"
  echo "1. Addition"
  echo "2. Subtraction"
  echo "3. Multiplication"
  echo "4. Division"
  echo "5. Modulus"
}

# Read two numbers from the user
echo "Enter the first number:"
read num1
echo "Enter the second number:"
read num2

# Display menu and get user choice
show_menu
read -p "Enter your choice: " choice

# Perform operations based on user choice
case $choice in
  1)
    result=$((num1 + num2))
    echo "Addition result: $result"
    ;;
  2)
    result=$((num1 - num2))
    echo "Subtraction result: $result"
    ;;
  3)
    result=$((num1 * num2))
    echo "Multiplication result: $result"
    ;;
  4)
    if [ $num2 -ne 0 ]; then
      result=$((num1 / num2))
      echo "Division result: $result"
    else
      echo "Error: Division by zero is not allowed."
    fi
    ;;
  5)
    if [ $num2 -ne 0 ]; then
      result=$((num1 % num2))
      echo "Modulus result: $result"
    else
      echo "Error: Modulus by zero is not allowed."
    fi
    ;;
  *)
    echo "Invalid choice. Please select a valid option."
    ;;
esac

