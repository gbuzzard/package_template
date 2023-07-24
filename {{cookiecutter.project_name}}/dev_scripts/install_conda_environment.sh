#!/bin/bash
# This script destroys the conda environment for this pacakge and reinstalls it.

# Create and activate new conda environment
# First check if the target environment is active and deactivate if so
NAME={{cookiecutter.project_name}}
if [ "$CONDA_DEFAULT_ENV"==$NAME ]; then
    conda deactivate
fi

conda remove env --name $NAME --all
conda create --name $NAME python={{cookiecutter.python_version}}
conda activate $NAME

echo
echo "Use 'conda activate" $NAME "' to activate this environment."
echo

