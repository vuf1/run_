#!/usr/bin/env zsh

echo "Enter your command to execute it, "
echo "-py to run python code," 
echo "*py to run a python file,"
echo "and exit to exit."
while true; do
    read -r -e "input?> "
    if [[ "$input" == "exit" ]]; then
        break
    elif [[ "$input" == "-py" ]]; then
        echo "Enter your Python code. Type END on a new line when finished:"
        code=""
        while true; do
            read -r line
            if [[ "$line" == "END" ]]; then
                break
            fi
            code+="$line"$'\n'
        done
        python3 -c "$code"
    elif [[ "$input" == "*py" ]]; then
        read -r "filer?Enter your file name: "
        if [[ ! -f "$filer" ]]; then
            echo "The file is missing."
        else
            python3 "$filer"
        fi
    elif [[ "$input" == "src" ]]; then
        echo "zsh code:\n\n\n\n\n"
        cat "/usr/local/bin/run"
        echo "\n\n\npath:\n/usr/local/bin/run"
    else
        eval "$input"
    fi
done
