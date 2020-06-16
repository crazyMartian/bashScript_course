#!/bin/bash
shopt -s nullglob

for File in *jpg
do
        if [[ $File == NULL ]]
        then
            echo "No .jpg found: exiting"
            exit 0

        elif [[ $File != $(date "+%y")*.jpg ]]
        then
            mv $File $(date "+%y%m%d_"$File)
        fi
done
