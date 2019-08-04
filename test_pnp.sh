#!/usr/bin/env bash

# Run pnp script
./pnp testDir


# Show created directory contents
tree -L 2 testDir

[[ -n $(ls | grep testDir) ]] && echo -e "\033[32mSuccess\033[0m - Project folder created." || echo -e "\033[31mFailure\033[0m - Project folder not created."

[[ -n $(ls testDir | grep src) ]] && echo -e "\033[32mSuccess\033[0m - src folder created." || echo -e "\033[31mFailure\033[0m - src folder not created."
[[ -n $(ls testDir/src | grep __init__.py) ]] && echo -e "\033[32mSuccess\033[0m - src/__init__.py created." || echo -e "\033[31mFailure\033[0m - src/__init__.py not created."
[[ -n $(ls testDir/src | grep main.py) ]] && echo -e "\033[32mSuccess\033[0m - src/main.py created." || echo -e "\033[31mFailure\033[0m - src/main.py not created."

[[ -n $(ls testDir | grep tests) ]] && echo -e "\033[32mSuccess\033[0m - tests folder created." || echo -e "\033[31mFailure\033[0m - tests folder not created."
[[ -n $(ls testDir/tests | grep __init__.py) ]] && echo -e "\033[32mSuccess\033[0m - tests/__init__.py created." || echo -e "\033[31mFailure\033[0m - tests/__init__.py not created."
[[ -n $(ls testDir/tests | grep test_main.py) ]] && echo -e "\033[32mSuccess\033[0m - tests/test_main.py created." || echo -e "\033[31mFailure\033[0m - tests/test_main.py not created."

source testDir/venv/bin/activate
[[ -n $(pip freeze | grep pep8) ]] && echo -e "\033[32mSuccess\033[0m - pep8 installed." || echo -e "\033[31mFailure\033[0m - pep8 installation failed."
[[ -n $(pip freeze | grep pytest) ]] && echo -e "\033[32mSuccess\033[0m - pytest installed." || echo -e "\033[31mFailure\033[0m - pytest installation failed."
[[ -n $(pip freeze | grep pytest-cov) ]] && echo -e "\033[32mSuccess\033[0m - pytest-cov installed." || echo -e "\033[31mFailure\033[0m - pytest-cov installation failed."
[[ -n $(pip freeze | grep pylint) ]] && echo -e "\033[32mSuccess\033[0m - pylint installed." || echo -e "\033[31mFailure\033[0m - pylint installation failed."

[[ -z $(head testDir/.gitignore) ]] && echo -e "\033[31mFailure\033[0m - .gitignore empty." || echo -e  "\033[32mSuccess\033[0m - .gitignore pulled."
[[ -z $(head testDir/LICENSE.txt) ]] && echo -e "\033[31mFailure\033[0m - LICENSE.txt empty." || echo -e  "\033[32mSuccess\033[0m - LICENSE.txt pulled."
