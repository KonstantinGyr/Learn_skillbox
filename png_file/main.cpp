#include <iostream>
#include <fstream>
#include <string>

int main() {
    std::ifstream rain;
    std::string address;
    do {
        std::cout << "Input address your file : " << std::endl;
        std::cin >> address;
        if (address.substr(address.size() - 3) != "png") {
            std::cout << "File extension is not \"png\"" << std::endl;
            continue;
        }
        rain.open((address), std::ios::binary);
        std::cout << (!(rain.is_open()) ? "Not correct address" : "Ok address");
        std::cout << std::endl;
    }
    while(!rain.is_open());
    char buffer [5];
    char ident []={-119,'P','N','G','\0'};
    bool oK=true;
    for(int i=0;i<4;i++){
        rain>>buffer[i];
        if(buffer[i]!=ident[i])oK=false;
    }
    buffer [4]='\0';
    std::cout<<((oK)?"Is PNG-file":"Is not PNG");
    std::cout<<std::endl;
    std::cout<<buffer<<" == "<<ident;
    rain.close();
    return 0;
}
