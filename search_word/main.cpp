#include <iostream>
#include <fstream>
#include <vector>
#include <string>

int main()
{
    std::ifstream text;
    std::string w;
    text.open("C:\\text.txt");
    std::cout << "Input search word :  ";
    std::string search;
    std::cin>>search;
    int count=0;
    while(!text.eof()) {
        text >> w;
        if (w == search) {
            count++;
        }
    }
    std::cout<<count;
    text.close();
    return 0;
}
