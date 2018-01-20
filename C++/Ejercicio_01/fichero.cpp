#include "fichero.h"
#include <fstream>
using namespace std

tSpreadsheet *loadCsvFile(const char *filename){
    ifstream in(filename);
    int rows, cols;
    in >> rows >> cols;
    tSpreadsheet *spreadsheet = new tSpreadsheet; 
    
    spreadsheet->numCols = cols;
    spreadsheet->numRows = rows;
    spreadsheet->content = new int*[rows];
    for(int i=0;i<rows;i++){
        spreadsheet->content[i]=new int [cols];
    }
    for(int i=0;i<rows;i++){
        for(int j=0;i<cols;j++){
            in >> spreadsheet->content[i][j];
        }
    }
}

int deleteData(tSpreadsheet *spreadsheet){
    for(int i=0;i<spreadsheet->numRows;i++){
        delete [] spreadsheet[i];
    }
    delete [] spreadsheet->content;
    delete spreadsheet;
}