#!/bin/bash

help=$(cat <<'Guide'
Usage : 

  1. Passing Arguments 
    In this method, you need to pass 2 arguments , First is of your name which is optional & second is of your age. 
    Example: 
      ./script.sh <yourName> <yourFathersName(optional)>
      
  2. Interactive Questions
    In this method, you just need to run script as:
      ./script.sh
Guide
)


# if asks for help
case "${1,,}" in
  -help|--help|-h|--h) 
    echo "$help" 
    exit 0 ;;
esac

# Happening things inside both methods
main () {
  name="$1"
  fName="$2" # Father's Name
  if [ -z "$fName" ]; then
      echo "$name, You didn't Passed your Father's Name."
      read -p "Is he ALIVE ? (yes/no) : " isAlive
      echo "" # Just a NewLine bcz following echoS need it at start 
      case "${isAlive,,}" in
        yes|y) echo -e "May he live long - Ameen 🙂. \nYour Father is alive , resolve any conflicts b/w you & him and keep in Mind: \n He is the only person who will not jealous to your success, in this world !" ;;
        no|n) echo "So SAD 😔. Pray for him always and keep going ..." ;;
        *) 
          echo "Invalid Option" 
          exit 1 ;;
      esac
      
    else 
      echo -e "Good Boy/Girl. \nI like it 😉, $name $fName. \n Have a Nice Day!"
    exit 0 # Bcz Method is complete
    fi
}

# Method1 : Passing Arguments where Giving Name is necessary
if [ -n "$1" ]; then
  main "$1" "$2"
fi

# Method2 : Interactive Input if Name is Missing
if [ -z "$1" ]; then
  read -p "Enter your Name: " name
  read -p "Enter your Father's Name: " fName
  main "$name" "$fName"
fi

# 0.3 — Multi-Mode Input Tool
# Tool should accept:
# 
# - Argument input OR
# - Interactive input if missing
# 
# Example:
# 
# ./say.sh Hello
# 
# or
# 
# ./say.sh 
#    Enter message:
# 
# 👉 Introduces: dual input mode (real CLI behavior)
