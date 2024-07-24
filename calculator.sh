#!/bin/bash

# Function for addition
function addition {
    read -p "Enter First number: " num1
    read -p "Enter Second number: " num2

    let sum=$(( num1 + num2 ))
    echo "Sum is $sum"
}

# Function for subtraction
function subtraction {
    read -p "Enter First number: " num1
    read -p "Enter Second number: " num2

    let diff=$(( num1 - num2 ))
    echo "Difference is $diff"
}

# Function for multiplication
function multiplication {
    read -p "Enter First number: " num1
    read -p "Enter Second number: " num2

    let product=$(( num1 * num2 ))
    echo "Product is $product"
}

# Function for division
function division {
    read -p "Enter First number (numerator): " num1
    read -p "Enter Second number (denominator): " num2
    
    let quotient=$(( num1 / num2 ))
    echo "Quotient is $quotient"
}

# Main menu function
function main_menu {
    echo "Choose an operation:"
    echo "1. Addition"
    echo "2. Subtraction"
    echo "3. Multiplication"
    echo "4. Division"
    read -p "Enter your choice (1-4): " choice
}

# Call the main_menu function to display the menu
main_menu

# Case statement to select and execute the appropriate function based on user's choice
case $choice in
    1) addition ;; 
    2) subtraction ;;
    3) multiplication ;;
    4) division ;;
    *) echo "Invalid choice. Please enter a number between 1 and 4." ;;
esac

