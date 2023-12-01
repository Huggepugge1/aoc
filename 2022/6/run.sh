#!/bin/bash
output_file="/dev/stdout"
while getopts "q" opt; do
  case $opt in
    q)
      output_file="/dev/null"
      ;;
  esac
done

make > $output_file

echo "Part 1"
./part1
echo "Part 2"
./part2
