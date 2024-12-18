#include <iostream>
#include <fstream>
#include <cstdlib>
using namespace std;

int main() {
    int i = 0;
    while (i < 5) {
        system("mkdir temp");
        system("cd temp"); // This line will not work as expected in C++

        ofstream fe("temp/fake.txt"); // Using ofstream for file writing
        if (fe.is_open()) {
            for (int a = 0; a < 500; ++a) {
                fe << "0"; // Writing to file using << operator
            }
            fe.close();
        } else {
            cout << "Unable to open file";
            return 1;
        }
        i++;
    }

    // system("exit"); // This line is not needed in C++
    return 0;
}

