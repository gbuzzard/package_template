#!/bin/bash
# This script just installs {{cookiecutter.project_name}} along with all requirements
# for the package, demos, and documentation.
# However, it does not remove the existing installation of {{cookiecutter.project_name}}.

conda activate {{cookiecutter.project_name}}
cd ..
pip install -r requirements.txt
pip install -e .
pip install -r demo/requirements.txt
pip install -r docs/requirements.txt 
cd dev_scripts

