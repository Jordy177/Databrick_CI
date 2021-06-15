#!/bin/bash
PWD=`pwd`
ROOT_DIR="$AGENT_BUILDDIRECTORY/s/distributions"

for dir in ${ROOT_DIR}; 
    do 
        for folder in `ls ${dir}`;
            do
                path=${dir}/${folder}
                cd $path
                python setup.py bdist_wheel;  
                cd ..           
            done
    done