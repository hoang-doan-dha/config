# 8. LOGICAL "AND" OPERATOR

# age=50

# if [[ "$age" -gt 18 && "$age" -lt 30 ]]
# then
#     echo "valid age"
# else
#     echo "age not valid"
# fi

# 10. PERFORM ARITHMETIC OPERATIONS

# num1=20
# num2=10

# echo $(( num1 % num2 ))
# echo $(expr $num1 \* $num2 )

# 11. FLOATING POINT MATH OPERATIONS | bc

# num1=20.5
# num2=5

# echo "2+2" | bc

# 12. CASE STATEMENT

# vehicle=$1

# case $vehicle in
# "car")
#     echo "Rent of $vehicle is 100 dolar"
#     ;;
# "van")
#     echo "Rent of $vehicle is 80 dolar"
#     ;;
# "bicycle")
#     echo "Rent of $vehicle is 5 dolar"
#     ;;
# *)
#     echo "Unknown vehicle"
#     ;;
# esac

# 13. CASE STATEMENT + REGULAR EXPRESSION

# echo -e "Enter some character : \c"
# read value

# case $value in
# [a-z])
#     echo "User entered $value a to z"
#     ;;
# [A-Z])
#     echo "User entered $value A to Z"
#     ;;
# [0-9])
#     echo "User entered $value 0 to 9"
#     ;;
# ?)
#     echo "User entered $value special character"
#     ;;
# *)
#     echo "Unknown input"
#     ;;
# esac

# 14. ARRAY VARIABLES

os=('ubuntu' 'windows' 'kali')
os[5]='mac'
unset os[2]

echo "${os[@]}" # print all elements in array
echo "${os[1]}"
echo "${!os[@]}" # print all indexes
echo "${#os[@]}" # print the length of array

string=something
echo "${string[@]}"  # print all
echo "${string[0]}"  # print first element of array equal to string
echo "${string[1]}"  # print second elem of array = nothing
echo "${#string[@]}" # length = 1
