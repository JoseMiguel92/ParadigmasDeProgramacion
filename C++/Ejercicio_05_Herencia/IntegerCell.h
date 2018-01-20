#ifndef INTEGERCELL_H_
#define INTEGERCELL_H_
#include <Cell.h>
using namespace std;
class IntegerCell: public Cell{
public:
    IntegerCell();
    virtual ~IntegerCell();
private:
    int dato;
};
#endif/* INTEGERCELL_H */