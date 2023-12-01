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
    while (infile >> line) {
        
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
    while (infile >> line) {
        
    }
    
    
    std::cout << ans << std::endl;
}" > part2.cpp

echo "#!/bin/bash
output_file=\"/dev/stdout\"
while getopts \"q\" opt; do
  case \$opt in
    q)
      output_file=\"/dev/null\"
      ;;
  esac
done

make > output_file

echo \"Part 1\"
./part1
echo \"Part 2\"
./part2" >> run.sh

chmod +x run.sh

echo "C = g++
CFLAGS = -std=c++23 -O3
DEFAULT_WARNINGS = -Wextra -Wall

all: part1 part2

part1: part1.cpp
	\$(C) \$(CFLAGS) \$(WARNINGS) -o part1 part1.cpp

part2: part2.cpp
	\$(C) \$(CFLAGS) \$(WARNINGS) -o part2 part2.cpp


clean:
	rm -f part1 part2

ifndef WARNINGS
    WARNINGS = \$(DEFAULT_WARNINGS)
endif
" > makefile
