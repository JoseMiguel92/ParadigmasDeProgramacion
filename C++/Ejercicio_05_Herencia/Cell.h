#ifndef CELL_H_
#define CELL_H_
class Cell{
public:
    Cell();
    virtual ~Cell();
protected:
    int getFila(){return fila;};
    int getColumna(){return columna;};
    void setFila(int f){fila=f;};
    void setColumna(int col){columna = col;};
private:
    int fila;
    int columna;
};
#endif/* CELL_H */