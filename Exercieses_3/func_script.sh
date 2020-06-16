#!/bin/bash

function file_count(){

    count=$(ls | wc -l)
    
    echo $(expr $count - 1)
}

file_count $1
