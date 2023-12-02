if [ $# -lt 2 ]; then
    if [ $# -eq 0 ]; then
        year="$(date +%-Y)"
        day="$(date +%-d)"
    else
        day=$1
        year="$(date +%-Y)"
    fi
else 
    year=$1
    day=$2
fi
mkdir $day
cd $day

curl https://adventofcode.com/$year/day/$day/input --cookie "session=$session" > input.txt

echo "#include <fstream>
#include <iostream>
#include <string>

int main() {
    int ans = 0;
    std::ifstream infile(\"input.txt\");
    std::string line;
    while (std::getline(infile, line)) {
        std::cout << line << std::endl;
    }
    
    
    std::cout << ans << std::endl;
}" > part1.cpp

echo "#include <fstream>
#include <iostream>
#include <string>

int main() {
    int ans = 0;
    std::ifstream infile(\"input.txt\");
    std::string line;
    while (std::getline(infile, line)) {
        std::cout << line << std::endl;
    }
    
    
    std::cout << ans << std::endl;
}" > part2.cpp

echo "#!/bin/bash
output_file=\"/dev/stdout\"
std=\"c++23\"
while getopts \"qs:\" opt; do
    case \$opt in
        q)
            output_file=\"/dev/null\"
            ;;
        s)
            std=\$OPTARG
            ;;
    esac
done

make STD=\$std > output_file

echo \"Part 1\"
./part1
echo \"Part 2\"
./part2" >> run.sh

chmod +x run.sh

echo "C = g++
C = g++
CFLAGS = -O3
STD ?= c++23
DEFAULT_WARNINGS = -Wextra -Wall

all: part1 part2

part1: part1.cpp
	\$(C) \$(CFLAGS) \$(WARNINGS) -std=\$(STD) -o part1 part1.cpp

part2: part2.cpp
	\$(C) \$(CFLAGS) \$(WARNINGS) -std=\$(STD) -o part2 part2.cpp


clean:
	rm -f part1 part2

ifndef WARNINGS
	WARNINGS = \$(DEFAULT_WARNINGS)
endif" > makefile
