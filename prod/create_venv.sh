#!/bin/bash

# This is a bash script to automate creating a python virtual environment
# The user will be prompted to provide a path to the directory where the venv will be created
# The venv will then be created with the following:
# 1. dev, test, and data subdirectories
# 2. README.md file
# 3. .gitignore file which will include the dev/ direcotry

# Ask the user to provide the directory location
read -p "Enter the path to the directory where you want to create the virtual environment: " dir_path

# Validate the path input:
# 1. Is the path empty?
# 2. Does it contain invalid characters?
# 3. Does it already exist?
if [[ -z "$dir_path" || "$dir_path" =~ [^a-zA-Z0-9/_-] || -d "$dir_path" ]]; then
    if [[ -d "$dir_path" ]]; then
        echo "The directory already exists. Please choose a different path."
    else
        echo "Invalid directory path. Please provide a valid path."
    fi
    exit 1
fi

# Create the directory
mkdir -p "$dir_path"

# Navigate to the specified directory or show error
cd "$dir_path" || { echo "Failed to navigate to directory."; exit 1; }

# Create subdirectories for structure
mkdir -p dev prod data

# Create a markdown readme file for documentation and a .gitignore file
touch README.md .gitignore

# Add the test directory to the .gitignore file
echo -e "dev/\n.venv/" >> .gitignore

# By default, we will call the venv ".venv" so that vscode can read it easily when we launch the directory
# Create the virtual environment
python3 -m venv .venv

# Activate the virtual environment
source .venv/bin/activate

# Provide confirmation to the user
echo "Virtual environment created and activated at: '$dir_path'."