
<table border=0>
  <tr>
    <th><img src="https://gdurl.com/snpR" alt="drawing" width="64" align="middle"/></th>
    <th><H1>Python New Project</H1></th>
  </tr>
</table>


## Installation
```bash
git clone https://github.com/minamaged113/pnp.git
cd pnp
chmod +x install.sh
./install.sh
```
## Dependencies
* tree
* curl
* python3
* python3-venv

## Usage
### Create a new python project using the defaults
```bash
pnp ProjectName
```

## Uninstall

## Features

### Defaults
- [x] Create ``src/`` directory package.
- [x] Create ``tests/`` directory package.
- [x] Create ``src/main.py`` file, by default.
- [x] Create ``tests/test_main.py`` file, by default.
- [x] Create ``/README.md`` file.
- [x] Create ``/LICENSE.txt`` file.
- [x] Populate ``/LICENSE.txt`` with GPL3 by default.
- [x] Create a Python3 virtual environment using ``venv``.
- [x] ``pip install pep8``
- [x] ``pip install pytest``
- [x] ``pip install pytest-cov``
- [x] Create ``/requirements.txt`` file.
- [ ] ``pip freeze > requirements.txt``
- [ ] Create ``.circleci/`` directory.
- [ ] Create ``.circleci/config.yml`` file.
- [ ] Populate ``.circleci/config.yml`` with the basic configurartion.
- [ ] Initialize as Git repo.
- [x] Create ``/.gitignore``.
- [x] Populate ``/.gitignore`` with python template.

### User-defined
#### Project Credentials:

##### Project Name:
- [ ] Specify the name of the project while creating.
- [ ] Create the main file with the project's name instead of ``main.py``.

##### Project Documentation:
- [ ] Populate ``/README.md`` with project basic information.
- [ ] Fill license user fields from system variables by default.

##### Project Licensing:
- [ ] Populate ``/LICENSE.txt`` with user's license of choice.
- [ ] Fill license user fields by user input.

##### Testing:
- [ ] Installing specific testing module.

##### Continuous Integration.
- [ ] Let the user choose their own CI/CD tool.
