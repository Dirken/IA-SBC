#include <fstream>
#include <iostream>
using namespace std;

int main(){
    ofstream outputFile("all.clp"); 
    string linea;
    ifstream loadFile;
    loadFile.open("classes.pont");
    if (loadFile.is_open()) {
	    for(int i=0; i<=3; ++i) getline(loadFile, linea);
        while (getline(loadFile, linea)) outputFile << linea + "\n";
        cout << "Archivo classes.pont leido correctamente." << endl;
    } else {
        cout << "Archivo classes.pont no encontrado o no ha podido abrirse." << endl;
        exit(1);
    } 
    loadFile.close();
    outputFile << "\n(definstances Instances\n";
    loadFile.open("instances.pins");
    if (loadFile.is_open()) {
	    for(int i=0; i<=3; ++i) getline(loadFile, linea);
        while (getline(loadFile, linea)) outputFile << "\t" + linea + "\n";
        cout << "Archivo instances.pins leido correctamente.";
    } else {
        cout << "Archivo instances.pins no encontrado o no ha podido abrirse.";
        exit(1);
    }
    loadFile.close();
    outputFile << ")" << endl;
    outputFile.close();
} 
