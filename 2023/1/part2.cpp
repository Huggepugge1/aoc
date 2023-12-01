#include <fstream>
#include <iostream>
#include <string>
#include <algorithm>
#include <map>

std::map<std::string, int> numbers = {
    {"zero", 0},
    {"one", 1},
    {"two", 2},
    {"three", 3},
    {"four", 4},
    {"five", 5},
    {"six", 6},
    {"seven", 7},
    {"eight", 8},
    {"nine", 9},
    {"orez", 0},
    {"eno", 1},
    {"owt", 2},
    {"eerht", 3},
    {"ruof", 4},
    {"evif", 5},
    {"xis", 6},
    {"neves", 7},
    {"thgie", 8},
    {"enin", 9},
};

int main() {
    int ans = 0;
    std::ifstream infile("input.txt");
    std::string line;
    while (infile >> line) {
        int current = 0;
        for (int i = 0; i < line.length(); i++) {
            if (line[i] - 48 <= 9) {
                current = line[i] - 48;
                break;
            }
            std::string current_string = "";
            for (int j = i; j < line.length(); j++) {
                current_string += line[j];
                if (numbers.find(current_string) != numbers.end()) {
                    current = numbers[current_string];
                    goto reverse;
                }
            }
        }
reverse:
        reverse(line.begin(), line.end());
        for (int i = 0; i < line.length(); i++) {
            if (line[i] - 48 <= 9) {
                current = current * 10 + line[i] - 48;
                break;
            }
            std::string current_string = "";
            for (int j = i; j < line.length(); j++) {
                current_string += line[j];
                if (numbers.find(current_string) != numbers.end()) {
                    current = current * 10 + numbers[current_string];
                    goto done;
                }
            }
        }
done: 
        ans += current;
    }
    
    
    std::cout << ans << std::endl;
}
