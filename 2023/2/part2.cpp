#include <fstream>
#include <iostream>
#include <string>
#include <sstream>

int main() {
    int ans = 0;
    std::ifstream infile("input.txt");
    std::string line;
    int gameNum;
    while (std::getline(infile, line)) {
        std::istringstream iss(line.substr(4, line.length() - 4));
        std::string empty;
        iss >> gameNum >> empty;
        int amount;
        std::string currentColor;
        int maxRed = 0, maxGreen = 0, maxBlue = 0;
        while (iss >> amount >> currentColor) {
            if (currentColor.find(",") != std::string::npos) currentColor = currentColor.erase(currentColor.find(","), 1);
            if (currentColor.find(";") != std::string::npos) currentColor = currentColor.erase(currentColor.find(";"), 1);
            if (currentColor == "red" && amount > maxRed)
                maxRed = amount;
            else if (currentColor == "green" && amount > maxGreen)
                maxGreen = amount;
            else if (currentColor == "blue" && amount > maxBlue)
                maxBlue = amount;
        }
        
        ans += maxRed * maxGreen * maxBlue;
    }    
    
    std::cout << ans << std::endl;
}
