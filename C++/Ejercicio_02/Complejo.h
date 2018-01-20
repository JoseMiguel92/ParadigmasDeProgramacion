#ifndef COMPLEJO_H_
#define COMPLEJO_H_
#include <string>

class Complejo{
public:
    Complejo();
    virtual ~Complejo(); /* Destructor */
    Complejo(double, double);
    double abs() const;
    Complejo add(const Complejo& complejo) const;
    bool equals(const Complejo& complejo) const;
    std::string toString() const;
    double getParteReal(void){return parteReal};
    double getParteImaginaria(void){return parteImaginaria};

private:
    double parteReal;
    double parteImaginaria;
}; 
#endif/* CCOMPLEJO_H */