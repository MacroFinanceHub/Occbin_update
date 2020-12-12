@#include "common_declarations.inc"

//%------------------------------------------------------------
//% Model equations
//%------------------------------------------------------------

model;
@#include "common_equations.inc"
   
//% OBC 10
[static]
lm=0;
[dynamic]
lm=0;
bnot = (1-RHOD)*M*q*h1+RHOD*b(-1)/dp ;
maxlev = b-bnot;
log(r) = log(rnot) ;
end;