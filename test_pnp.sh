#!/usr/bin/env bash
# String output format for success
beginGreenText="\033[1;32m"
# String output format for failure
beginRedText="\033[1;31m"
endStyle="\033[0m"


# Run pnp script
./pnp -n testDir

echo "Testing Ouput"
# Show created directory contents
tree -L 2 testDir

[[ -n $(ls | grep testDir) ]] && echo -e "$beginGreenText Success $endStyle - Project folder created." || echo -e "$beginRedText Failure $endStyle - Project folder not created."

[[ -n $(ls testDir | grep src) ]] && echo -e "$beginGreenText Success $endStyle - src folder created." || echo -e "$beginRedText Failure $endStyle - src folder not created."
[[ -n $(ls testDir/src | grep __init__.py) ]] && echo -e "$beginGreenText Success $endStyle - src/__init__.py created." || echo -e "$beginRedText Failure $endStyle - src/__init__.py not created."
[[ -n $(ls testDir/src | grep main.py) ]] && echo -e "$beginGreenText Success $endStyle - src/main.py created." || echo -e "$beginRedText Failure $endStyle - src/main.py not created."

[[ -n $(ls testDir | grep tests) ]] && echo -e "$beginGreenText Success $endStyle - tests folder created." || echo -e "$beginRedText Failure $endStyle - tests folder not created."
[[ -n $(ls testDir/tests | grep __init__.py) ]] && echo -e "$beginGreenText Success $endStyle - tests/__init__.py created." || echo -e "$beginRedText Failure $endStyle - tests/__init__.py not created."
[[ -n $(ls testDir/tests | grep test_main.py) ]] && echo -e "$beginGreenText Success $endStyle - tests/test_main.py created." || echo -e "$beginRedText Failure $endStyle - tests/test_main.py not created."

source testDir/venv/bin/activate
[[ -n $(pip freeze | grep pep8) ]] && echo -e "$beginGreenText Success $endStyle - pep8 installed." || echo -e "$beginRedText Failure $endStyle - pep8 installation failed."
[[ -n $(pip freeze | grep pytest) ]] && echo -e "$beginGreenText Success $endStyle - pytest installed." || echo -e "$beginRedText Failure $endStyle - pytest installation failed."
[[ -n $(pip freeze | grep pytest-cov) ]] && echo -e "$beginGreenText Success $endStyle - pytest-cov installed." || echo -e "$beginRedText Failure $endStyle - pytest-cov installation failed."
[[ -n $(pip freeze | grep pylint) ]] && echo -e "$beginGreenText Success $endStyle - pylint installed." || echo -e "$beginRedText Failure $endStyle - pylint installation failed."

[[ -z $(head testDir/.gitignore) ]] && echo -e "$beginRedText Failure $endStyle - .gitignore empty." || echo -e  "$beginGreenText Success $endStyle - .gitignore pulled."
[[ -z $(head testDir/LICENSE.txt) ]] && echo -e "$beginRedText Failure $endStyle - LICENSE.txt empty." || echo -e  "$beginGreenText Success $endStyle - LICENSE.txt pulled."
