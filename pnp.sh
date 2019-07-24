#!/bin/bash
echo "Creating new python project"

echo "/src"
mkdir src

echo "/src/main.py"
touch src/main.py

echo "/tests"
mkdir tests

echo "/tests/test_main.py"
touch tests/test_main.py

echo "/README.md"
echo "# Python New Project" >> README.md

echo "/.gitignore"
curl https://gitignore.io/api/python >> .gitignore

echo "/venv"
python3 -m venv venv

echo "/requirements.txt"
touch requirements.txt

echo "/LICENSE.txt"
curl https://git.savannah.gnu.org/cgit/bash.git/plain/COPYING >> LICENSE.txt


