#include <fstream>
#include <iostream>
#include <string>
#include <algorithm>

int main() {
    int ans = 0;
    std::ifstream infile("input.txt");
    std::string line;
    while (infile >> line) {
        int current = 0;
        for (char temp : line) {
            if (temp - 48 <= 9) {
                current = temp - 48;
                break;
            }
        }
        reverse(line.begin(), line.end());
        for (char temp : line) {
            if (temp - 48 <= 9) {
                current = current * 10 + temp - 48;
                break;
            }
        }
        ans += current;
    }
    
    
    std::cout << ans << std::endl;
}
