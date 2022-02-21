#include <iostream>
#include <fstream>
#include <string>

int main() {
    std::ifstream list;
    std::string name1,name2,data,dataM ;
    int money;
    std::string address;
    do {
        std::cout << "Input address your file : " << std::endl;
        std::cin >> address;
        list.open(address);
        std::cout << ((list.is_open()) ? "Ok address " : "Not correct address ");
        std::cout << std::endl;
    }
    while(!list.is_open());
    int maxMoney=0;
    int sum=0;
    std::string name1max,name2max;
    while (!list.eof()){
        list>>name1>>name2>>money>>data;
        sum+=money;
       if(money>maxMoney){
           maxMoney=money;
           name1max=name1;
           name2max=name2;
           dataM=data;
       }
    }
    std::cout<<"Sum : " <<sum <<std::endl;
    std::cout<<"The biggest fee : "<<name1max<<" "<<name2max<<" "<<maxMoney<<" "<<dataM;
    list.close();
    return 0;
}
