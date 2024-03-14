#!/bin/bash
#promopt the user for their name,age and country
read -p "please enter your name: " name
read -p "please enter youe age: " age
read -p "please enter your country: " country

#validate the age input to ensure it’s a numeric value within a reasonable range.
ageRegex='^[0-9]+$'

if ! [[ $age =~ $ageRegex ]]; then
    echo "Error: Age must be a numeric value."
    exit 1
fi

if ((age < 0 || age > 150)); then
    echo "Error: Invalid age. Please enter a realistic age."
    exit 1
fi
echo "Hello $name, your age is $age and your country is $country"
exit 0

