#!/usr/bin/env bash

# Run pnp script
./pnp testDir


# Show created directory contents
tree -L 2 testDir

[[ -z $(head testDir/.gitignore) ]] && echo -e "\033[31mFailure\033[0m - .gitignore empty" || echo -e  "\033[32mSuccess\033[0m - .gitignore pulled"
[[ -z $(head testDir/LICENSE.txt) ]] && echo -e "\033[31mFailure\033[0m - LICENSE.txt empty" || echo -e  "\033[32mSuccess\033[0m - LICENSE.txt pulled"
