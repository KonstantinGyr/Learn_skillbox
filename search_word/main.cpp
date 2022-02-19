#include <iostream>
#include <fstream>
#include <vector>
#include <string>

std::string rightAdd( std::string& add){
    std::string newAdd;
    for(char symbol : add) {
        if (symbol == '\\'){
            newAdd.push_back('\\');
        }
        newAdd.push_back(symbol);
    }
    return newAdd;
}

int main()
{
    std::ifstream text;
    std::string word;
    std::string address;
    do {
        std::cout << "Input address your file : " << std::endl;
        std::cin >> address;
        text.open(rightAdd(address));
        std::cout << ((text.is_open()) ? "Ok address " : "Not correct address ");
        std::cout << std::endl;
    }
    while(!text.is_open());
    std::cout << "Input search word :  ";
    std::string search;
    std::cin>>search;
    int count=0;
    while(!text.eof()) {
        text >> word;
        if (word == search) {
            count++;
        }
    }
    std::cout<<count;
    text.close();
    return 0;
}
