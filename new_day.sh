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
