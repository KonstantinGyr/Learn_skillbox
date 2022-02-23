#include <iostream>
#include <vector>
#include <string>
#include <fstream>

int readQuestion(int sector,std::string address) {
    std::string num = std::to_string(sector);
    address += '\\';
    address += num;
    address += ".txt";
    std::ifstream question;
    std::string word;
    std::string answer;
    question.open(address);
    if(!question.is_open()){
        std::cout<<"Wrong address entered.";
        return 0;
    }
    while (!question.eof()) {
        question >> word;
        if (word == "@")break;
        std::cout << word << " ";
    }
    std::cout << std::endl;
    std::cin >> answer;
    question >> word;
    question.close();
    if (word != answer) {
        std::cout << "Answer is false!" << std::endl;
        std::cout << "Right answer is : " << word << std::endl;
        return 2;
    }
    return 1;
}
    int sectorCorr(int &cur, int offset, std::vector<int> &drum) {
        cur += offset;
        if (cur > 13) {
            cur %= 13;
            if(cur==0)cur=13;
        }
        while (drum[cur - 1] != 0) {
            cur++;
            if (cur > 13) cur %= 13;
        }
        drum[cur - 1] = cur;
        std::cout << "Sector number : " << cur << std::endl;
        return cur;
    }
    int main() {
        std::string quest;
        std::string address;
        std::cout << "Input address folder with questions : " << std::endl;
        std::cin >> address;
        int gamers = 0;
        int viewers = 0;
        int offset;
        int curSector = 1;
        std::vector<int> drum(13, 0);
         do{
            std::cout << "Please, spin the dram!";
            std::cin >> offset;
            curSector = sectorCorr(curSector, offset, drum);
            int run=readQuestion(curSector,address);
            if(run==0){
                return 0;
            }
           else if (run==1) {
                gamers++;
                std::cout << "Answer is true!" << std::endl;
            }
          else {
              viewers++;
          }
            std::cout << "Score " << gamers << " : " << viewers << std::endl;
        }
        while (gamers < 6 && viewers< 6);
        if (gamers > viewers) {
            std::cout << "Gamer won!" << std::endl;
        }
        else {
            std::cout << "Viewer won!" << std::endl;
        }
        return 0;
    }