#ifndef SPREADSHEET_H_
#define SPREADSHEET_H_
typedef struct
{
    unsigned int numRows;
    unsigned int numCols;
    int **content;
} tSpreadsheet;
tSpreadsheet *loadCsvFile(const char *filename);
int saveCsvFile(tSpreadsheet *data, const char *filename);
int sumRow(tSpreadsheet *data, unsigned int rowIndex);
int sumCol(tSpreadsheet *data, unsigned int colIndex);
int deleteData(tSpreadsheet *data);
#endif /* SPREADSHEET_H_ */