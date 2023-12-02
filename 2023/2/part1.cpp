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
        bool validGame = true;
        while (iss >> amount >> currentColor) {
            if (currentColor.find(",") != std::string::npos) currentColor = currentColor.erase(currentColor.find(","), 1);
            if (currentColor.find(";") != std::string::npos) currentColor = currentColor.erase(currentColor.find(";"), 1);
            if ((currentColor == "red" && amount > 12)
                || (currentColor == "green" && amount > 13)
                || (currentColor == "blue" && amount > 14)) {
                validGame = false;
                break;
            }
        }
        
        if (validGame) ans += gameNum;
        gameNum++;
    }    
    
    std::cout << ans << std::endl;
}
