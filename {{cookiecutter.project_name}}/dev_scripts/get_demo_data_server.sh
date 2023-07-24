#!/bin/bash

echo "Enter your Purdue Career Account user name:"
read cluster_user_name

#####
# Change the cluster, source, and target info as needed, then uncomment the cp and scp lines below
#####
GPUCLUSTER="gilbreth"
CPUCLUSTER="brown"

source1="/depot/bouman/users/nhalavic/pcd_data"
target1="."
source2="/depot/bouman/users/mnagare/calibration_module_demo_data"
target2="../../data"

# get data
# assuming current working dir is {{cookiecutter.project_name}}/dev_scripts

cd ../demo
mkdir -p data
cd data

if [[ "$HOSTNAME" == *"$GPUCLUSTER"* || "$HOSTNAME" == *"$CPUCLUSTER"* ]]; then
  # cp -r $source1 $target1
  # cp -r $source2 $target2
else
  # scp -r $cluster_user_name@gilbreth.rcac.purdue.edu:$source1 $target1
  # scp -r $cluster_user_name@gilbreth.rcac.purdue.edu:$source2 $target2
fi

cd ../../dev_scripts

