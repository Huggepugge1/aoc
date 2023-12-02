#!/bin/bash
output_file="/dev/stdout"
std="c++23"
while getopts "qs:" opt; do
    case $opt in
        q)
            output_file="/dev/null"
            ;;
        s)
            std=$OPTARG
            ;;
    esac
done

make STD=$std > output_file

echo "Part 1"
./part1
echo "Part 2"
./part2
