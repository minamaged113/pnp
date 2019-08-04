#!/bin/bash

# install package ``tree`` if not installed
# if success, write the output in success.txt
# if fail, write the output in failure.txt
sudo apt-get install -y tree 1>success.txt 2>failure.txt

# install ``python3-venv`` if not installed
# if success, append the output in success.txt
# if fail, append the output in failure.txt
sudo apt-get install -y python3-venv 1>>success.txt 2>>failure.txt

# install ``curl`` if not installed
# if success, append the output in success.txt
# if fail, append the output in failure.txt
sudo apt-get install -y curl 1>>success.txt 2>>failure.txt

# install ``git`` if not installed
# if success, append the output in success.txt
# if fail, append the output in failure.txt
sudo apt-get install -y git 1>>success.txt 2>>failure.txt

# Create a new directory if it does not exist
# A ``bin`` that will include binaries that will
# be added to the path.
mkdir -p ~/bin
cp pnp ~/bin