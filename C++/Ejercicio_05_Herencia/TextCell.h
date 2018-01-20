#ifndef TEXTCELL_H_
#define TEXTCELL_H_
#include <string>
#include <Cell.h>
using namespace std;
class TextCell: public Cell {
public:
    TextCell();
    virtual ~TextCell();
private:
    string dato;
};
#endif/* TEXTCELL_H */