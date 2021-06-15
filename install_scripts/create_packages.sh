#!/bin/bash
PWD=`pwd`
ROOT_DIR="../distributions"

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