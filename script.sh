#!/bin/bash
echo "Please enter your name"
read name
echo "Hi $name"

# Get the current year
current_year=$(date +%Y)

# Read the age from the user
read -p "Please Enter your age $name: " age

# Calculate Birth year based on the Input age
birth_year=$((current_year - age))

# Display Birth year
echo "$name, You were born in the year $birth_year."
mkdir $name ; cd $name ; touch bash.txt game.txt demo.txt
ls -l | sort -k 5,5n

# Declaring a variable for the path to the directory we want to get the sum of its file
directory="/mnt/c/Users/Banky/Desktop/Ibukun Workspace/Auxiliary-Project-1-Bash/$name"

# Getting the sum of the files in the directory
file_count=$(ls -p "$directory" | grep -v / | wc -l)

#Displaying the sum of the files in our directory
echo "Number of files in the directory: $file_count"

# Get first number input from users
read -p "Please Enter your Desired Number: " number1

# Get second number input from users
read -p "Please Enter your Desired Number: " number2

# Summing up the inputs from users
result=$(($number1 + $number2))

# Displaying Input Results from users
echo "The numbers you entered add up to" $result

# Getting a random number from 1 to 100
random_number=$((1 + RANDOM % 100))

# Displaying a random number between 1 to 100
echo "Random number between 1 and 100: $random_number"

# Backup Directory Created
mkdir Backup_dir

# Specifying the Source File to backup and Directory to save the backup to
source_file="bash.txt"
backup_directory="Backup_dir"

# getting timestamp
timestamp=$(date +"%Y%m%d%H%M%S")
# Specifying a filename to give the backup file each time the backup is made 
backup_filename="$backup_directory/${source_file}_backup_$timestamp.txt"
cp "$source_file" "$backup_filename"
echo "Backup created: $backup_filename"

# Specifying the website to check
website="https://www.dareyio.com"

# getting response from site
response_code=$(curl -Is "$website" | head -n 1 | cut -d' ' -f2)

# Specifying condition for output based on availability of the website
if [ "$response_code" == "200" ]; then
    echo "Website is online."
else
    echo "Website is not online (HTTP response code: $response_code)."
fi

# Get the temperature input in Celsius from the user
read -p "Enter the Actual temperature in Celsius: " celsius

# convert the input in celsius to fahrenheit
fahrenheit=$((celsius * 9/5 + 32))

echo "$celsius°C is equal to $fahrenheit°F"

# Get user to input a sentence
read -p "Please enter a sentence: " sentence

# Echoing the sentence in reverse order
reversed_words=$(echo "$sentence" | rev | awk '{ for(i=NF; i>0; i--) printf "%s ", $i }')

echo "Reversed sentence: $reversed_words"