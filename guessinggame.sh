#!/bin/bash

nb_files=$(ls | wc -l)

function msg_to_user {
    if [[ $1 == "Correct" ]]
    then
        echo "Congratulations! You guessed the correct number of files."
    elif [[ $1 == "TooLow" ]]
    then
        echo "Your guess was too low."
    elif [[ $1 == "TooHigh" ]]
    then 
        echo "Your guess was too high."
    fi
}

end_flag=0
while [[ ${end_flag} -eq 0 ]]
do
    read -p "How many files are in the current directory: " user_guess
    # echo "Your guess is" ${user_guess} "files in the current directory."

    if [[ ${user_guess} -eq ${nb_files} ]]
    then
        end_flag=1
        msg_to_user "Correct"
    elif [[ ${user_guess} -lt ${nb_files} ]]
    then
        msg_to_user "TooLow"
    else
        msg_to_user "TooHigh"
    fi
done