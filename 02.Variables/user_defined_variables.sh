#!/bin/sh
# #!/bin/bash

# User-Defined Variables are mostly used in lowercase while UpperCase are also supported

name="Zohaib"
age=17 

# echo "Name = $name, Age = $age" # Used to print something

# Taking input from user

# 1. just store input
# read input

# 2. Msg before input

# i. using read
# read -p "Your City: " city # -p means prompt

# ii. using echo & read
# echo -n "Your City: " # -n avoids new line
# read city

# iii. using printf & read
printf "Your City = "
read city

echo "City = $city"
