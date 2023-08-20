#!/bin/bash
# This script purges the docs and environment

cd ..
/bin/rm -r docs/build
/bin/rm -r dist
/bin/rm -r {{cookiecutter.project_name}}.egg-info
/bin/rm -r build

pip uninstall {{cookiecutter.project_name}}

cd dev_scripts
