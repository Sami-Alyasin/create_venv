# Create venv

## About
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

---

## How to run
1. Clone this repository: git clone <insert-repository-url-here>
2. Navigate to the prod directory: cd <repository-name>/prod
3. Make the script executable: "chmod +x create_venv.sh"
4. Run the script and follow the prompts

---

## License

This project is licensed under the [GNU General Public License v3.0](https://www.gnu.org/licenses/gpl-3.0.en.html#license-text). You are free to use, modify, and distribute this code under the terms of the GPLv3. See the [LICENSE](LICENSE) file for details.

---

## Contact

- **Project Maintainer**: Sami Alyasin   
    - **Email**: Sami_Alyasin@outlook.com
    - **GitHub**: [github.com/Sami-Alyasin](https://github.com/Sami-Alyasin)

Feel free to reach out with any questions or suggestions. I hope you find this tool helpful!

---