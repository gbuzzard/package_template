#!/bin/bash
# This script installs everything from scratch

#####
# Update the cluster host names, modules, and jax installation as needed
#####

if [[ "$HOSTNAME" == *"gilbreth"* ]]; then
  module load  anaconda/2020.11-py38
  echo 'gilbreth setting'
fi
if [[ "$HOSTNAME" == *"brown"* ]]; then
  module load  anaconda/2020.11-py38
  echo 'brown setting'
fi

source clean_package.sh
source install_conda_environment.sh
source install_package.sh
source build_docs.sh

if [[ "$HOSTNAME" == *"gilbreth"* ]]; then
  pip install --upgrade "jax[cuda12_pip]" -f https://storage.googleapis.com/jax-releases/jax_cuda_releases.html
  echo " "
  echo "To run with jax on Gilbreth, first load the cuda module using "
  echo "    module load cudnn/cuda-12.1_8.9"
  echo " "
else
  pip install --upgrade "jax[cpu]"
fi

echo "Use"
echo "   source get_demo_data_server.sh   "
echo "to download data needed for demos"
echo " "
