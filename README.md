This repository contains an example machine learning application built with the following stack:
- Python as a programming language
- pip 3 as a package manager
- Streamlit as a machine-learning tooling framework

# Screenshots
https://user-images.githubusercontent.com/7799297/173105227-84a76523-8229-4f17-98b4-b08ea30c9fb7.mov


# Repository contents
- Dockerfile

  The [Dockerfile](./Dockerfile) builds a Docker image for the sample application:
  - The application is run with Python 3.9.13.
  - Any runtime configuration files should be put in the `codenow/config` folder. The `codenow/config/config.yaml` file is an example of configuration file. 
  - The application is served on the port 80.

- requirements.txt
  
`src/requirements.txt` contains the application dependencies (here, `scikit-learn==1.1.1`, `streamlit==1.10.0`). 

- app.py
  
The entry point for the application is `src/app.py`.

# How to run locally
To run locally:

1. [Install Python 3.9.13](https://www.python.org/downloads/) if you do not have Python installed or if you have an older version of Python.
2. [Install pip 3](https://pip.pypa.io/en/stable/installation/) if is is not already included in your Python installation.
3. In the directory of your choice, run `pip install -r requirements.txt` to install the application dependencies.
4. Go the `src` directory and run `streamlit run app.py`.

Note: You may need to configure the relevant path variables according to your operating system so that `pip` and `streamlit` can be run directly from your terminal.

# Configure your IDE
- [How to configure Visual Studio Code for Python](https://code.visualstudio.com/docs/python/python-tutorial)
- [Create and run Python applications with PyCharm](https://www.jetbrains.com/help/pycharm/creating-and-running-your-first-python-project.html)
- [Setting up Python for Sublime Text](https://www.youtube.com/watch?v=xFciV6Ew5r4)
- [Setting up Python for Atom](https://www.youtube.com/watch?v=DjEuROpsvp4&t=633s "Setting up a Python Development Environment in Atom")
- [Vim for Python development](https://stackabuse.com/vim-for-python-development/ "Vim for Python development")
- [Using Spyder](https://docs.spyder-ide.org/current/quickstart.html) (tag line: the scientific Python development environment)

# Runtime configuration files
CodeNOW will deploy the content of the `codenow/config` directory and make it available to the deployed application. Note that Python can accept any type of runtime configuration file format, including `.ini`, `.yaml`, `.json` files.

Popular options for configuration management in Python:
- [config files + ConfigParser](https://zetcode.com/python/configparser/)
- [dynaconf](https://www.dynaconf.com/)


# Customization
## Dockerfile
- change Python's version

```diff
- FROM python:3.9.13
+ FROM python:3.10.5
```

## Application dependencies
- update `src/requirements.txt` with the list of dependencies for your application.

# Tips
## Pip
- Use [`pip show`](https://pip.pypa.io/en/stable/cli/pip_show/) to check the details of an installed package.

```shell
$ pip show <package-name>

Home-page: https://pip.pypa.io/
Author: The pip developers
Author-email: distutils-sig@python.org
License: MIT
Location: c:\program files\python39\lib\site-packages
Requires:
Required-by:
```

- List of installed packages
  - [`pip list`](https://pip.pypa.io/en/stable/cli/pip_list/)

Example:
```shell
$ pip list
Package    Version
---------- -------
future     0.16.0
pip        18.1
setuptools 39.2.0
six        1.11.0
wheel      0.31.1
```


- [`pip freeze`](https://pip.pypa.io/en/stable/cli/pip_freeze/)

```
$ pip freeze
future==0.16.0
six==1.11.0
```

`freeze`  does not output  `pip`  itself and packages for package management such as  `setuptools`  and  `wheel`. `freeze` can be used to create  the `requirements.txt` file.

  - [how to write `requirements.txt` dependency file](https://note.nkmk.me/en/python-pip-install-requirements/)
