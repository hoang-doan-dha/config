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

# os=('ubuntu' 'windows' 'kali')
# os[5]='mac'
# unset os[2]

# echo "${os[@]}" # print all elements in array
# echo "${os[1]}"
# echo "${!os[@]}" # print all indexes
# echo "${#os[@]}" # print the length of array

# string=something
# echo "${string[@]}"  # print all
# echo "${string[0]}"  # print first element of array equal to string
# echo "${string[1]}"  # print second elem of array = nothing
# echo "${#string[@]}" # length = 1

# 15. WHILE LOOPS

# SYNTAX:
# while [ condition ]
# do
#     command1
#     command2
# done
# n=1

# while [ $n -le 5 ]; do
#     echo "$n"
#     n=$((n + 1))
# done

# n=10

# while (($n >= 5)); do
#     echo "$n"
#     ((n--))
# done

# 16. USING "SLEEP" WITH LOOPS

# render 1 to 10 per second just like setInterval()
# n=1

# while [ $n -le 10 ]; do
#     echo "$n"
#     ((n++))
#     sleep 1
# done

# 17. READ A FILE CONTENT IN BASH

# Way 1:
# while read p; do
#     echo $p
# done <test.sh

# Way 2:
# cat test.sh | while read p; do
#     echo $p
# done

# Way 3:
# while IFS= read -r line; do
#     echo $line
# done <test.sh

# 18. UNTIL LOOPS
# this is oppisition of WHILE loop

# until [ condition ]
# do
#     command1
#     command2
# done

# n=1
# until [ $n -gt 10 ]; do
#     echo $n
#     n=$((n + 1))
# done

# 19. FOR LOOPS

# for i in 1 2 3 6; do
#     echo $i
# done

# {START..END..INCREMENT}
# for i in {1..10..2}; do
#     echo $i
# done

# for ((i = 0; i <= 5; i++)); do
#     echo $i
# done

# for command in ls pwd date; do
#     echo "---------$command--------"
#     $command
# done

for item in *; do
    if [ -d $item ]; then
        echo $item
    fi
done
