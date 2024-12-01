# About:
This is a bash script to automate creating a python virtual environment.
The user will be prompted to provide a path to the directory where the venv will be created.

The user input will be validated to make sure the path:
1. Is not empty
2. Doesn't contain invalid characters
3. Doesn't already exist

The venv will then be created with the following:
1. dev, test, and data subdirectories
2. a blank README.md file
3. a .gitignore file which will include the dev and .venv direcotries


# How to run:
1. Clone this repository: git clone <insert-repository-url-here>
2. Navigate to the prod directory: cd <repository-name>/prod
3. Make the script executable: "chmod +x create_venv.sh"
4. Run the script and follow the prompts