#ifndef MATRIX_H_
#define MATRIX_H_
#include <string>

class Matrix{
public:
    Matrix();
    Matrix(int r,int c);
    Matrix(const Matrix&);// Constructor copia.
    friend Matrix operator+ (const Matrix&,const Matrix&);
    static Matrix getIdentityMatrix(unsigned int size);
private:
    int numCols;
    int numFils;
    int** datos;
}; 
#endif/* MATRIX_H */