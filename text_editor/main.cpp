#include <iostream>
#include <fstream>
#include <string>


int main() {
    std::ifstream text;
    std::string address;
    std::string trueAdd;
    do {
        std::cout << "Input address your file : " << std::endl;
        std::cin >> address;
        text.open(address, std::ios::binary);
        std::cout << ((!text.is_open()) ? "Not correct address" : "Ok address");
        std::cout << std::endl;
        trueAdd.clear();
    }
    while(!text.is_open());
    char buffer[20];
    while (!text.eof()) {
        text.read(buffer, sizeof(buffer));
       for(int i=0;i<text.gcount();i++) {
           std::cout << buffer[i];
       }
    }
    text.close();

    return 0;
}
