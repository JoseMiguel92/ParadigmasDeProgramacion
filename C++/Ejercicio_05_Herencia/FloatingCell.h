#ifndef FLOATINGCELL_H_
#define FLOATINGCELL_H_
#include <Cell.h>
using namespace std;
class FloatingCell : public Cell{
public:
    FloatingCell(int,int,double);
    virtual ~FloatingCell();
private:
    double dato;
};
#endif/* FLOATINGCELL_H_ */