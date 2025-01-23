#!/bin/bash

dirs=( "vehackcenter" "vehackcenter_vrf" "modified_static_thor" "modified_vrf_thor" )

# Build all directories
for dir in "${dirs[@]}"
do
    echo "Building $dir"
    cd $dir
    make docker
    cd ..
done