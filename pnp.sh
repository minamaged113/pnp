#!/usr/bin/env bash
################################################################################
# Create python new project using Command line in linux systems.
#
# This script is released to the Public Domain by Mina Gabriel
# Mina Ghobrial <minamaged113@gmail.com>
#
# References> https://gist.github.com/11404707.git
################################################################################

NOACT=0
NAME=$(basename $0|sed 's/\(\..*\)$//')
VERSION="0.1"

: ${VERBOSE:=0}
: ${LOGFILE:="${NAME}.log"}
: ${CONF_FILE:="${NAME}.conf"}
: ${NOACT:=0}

HOSTNAME=`hostname -s`
function version() {
    cat <<EOF >&2
$NAME - $VERSION
EOF
}

function copyright(){
    version
    cat << EOCOPYRIGHT >&2
Creates a new Python3 project.
Copyright (C) 2019  Mina Ghobrial

This program is free software: you can redistribute it and/or modify
it under the terms of the GNU General Public License as published by
the Free Software Foundation, either version 3 of the License, or
(at your option) any later version.

This program is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU General Public License for more details.

You should have received a copy of the GNU General Public License
along with this program.  If not, see <http://www.gnu.org/licenses/>.

EOCOPYRIGHT
}

echo "Creating new python project"

echo "/src"
mkdir src

echo "/src/__init__.py"
echo "/src/main.py"
touch src/__init__.py
touch src/main.py

echo "/tests"
mkdir tests

echo "/tests/__init__.py"
echo "/tests/test_main.py"
touch tests/__init__.py
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


