#include <fstream>
#include <iostream>

using namespace std;

int main(){ // g++ -std=c++11  -o script script.cpp
    ofstream outputFile("all.clp"); 

    string linea;

    ifstream loadFile1;
    loadFile1.open("classes.pont");
    if (loadFile1.is_open()) {    //Si existe el archivo lo leemos
        while (getline(loadFile1, linea)) { //Mientras existan palabras
            outputFile << linea + "\n";
        }
        cout << "Archivo classes.pont leido correctamente." << endl;
    } else {
        cout << "Archivo classes.pont no encontrado o no ha podido abrirse." << endl;
        exit(1);
    } 
    loadFile1.close();

    outputFile << "\n(definstances Instances\n";

    ifstream loadFile2;
    loadFile2.open("instances.pins");
    if (loadFile2.is_open()) {    //Si existe el archivo lo leemos
        while (getline(loadFile2, linea)) { //Mientras existan palabras
            outputFile << "\t" + linea + "\n";
        }
        cout << "Archivo instances.pins leido correctamente.";
    } else {
        cout << "Archivo instances.pins no encontrado o no ha podido abrirse.";
        exit(1);
    }
    loadFile2.close();

    outputFile << ")" << endl;
    outputFile.close();
}