#!/bin/bash

bubble_sort() {
    arr=("$@")
    n=${#arr[@]}
    for ((i = 0; i < n-1; i++)); do
        for ((j = 0; j < n-i-1; j++)); do
            if ((arr[j] > arr[j+1])); then
                temp=${arr[j]}
                arr[j]=${arr[j+1]}
                arr[j+1]=$temp
            fi
        done
    done
    echo "${arr[@]}"
}

arr=(64 34 25 12 22 11 90)
sorted_arr=$(bubble_sort "${arr[@]}")
echo "Sorted array: $sorted_arr"
