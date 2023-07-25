#!/bin/bash

echo "Enter your Purdue Career Account user name:"
read cluster_user_name

#####
# Change the cluster, source, and target info as needed, then uncomment the cp and scp lines below
#####
GPUCLUSTER="gilbreth"
CPUCLUSTER="brown"

source1="/depot/bouman/users/nhalavic/pcd_data"
source2="/depot/bouman/users/mnagare/calibration_module_demo_data"

# Note that the target directories are relative to dev_scripts
target_dir1="../demo/data"
target_dir2="../data"

mkdir -p "$target_dir1"
mkdir -p "$target_dir2"

red=`tput setaf 1`
green=`tput setaf 2`
reset=`tput sgr0`

if [[ "$HOSTNAME" == *"$GPUCLUSTER"* || "$HOSTNAME" == *"$CPUCLUSTER"* ]]; then
    echo "${red}   Edit get_demo_data_server.sh to get correct data.    ${reset}"
    # cp -r $source1 $target1
    # cp -r $source2 $target2
else
    echo "${red}   Edit get_demo_data_server.sh to get correct data.    ${reset}"
    # scp -r $cluster_user_name@gilbreth.rcac.purdue.edu:$source1 $target1
    # scp -r $cluster_user_name@gilbreth.rcac.purdue.edu:$source2 $target2
fi


