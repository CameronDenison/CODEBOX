# <a href="https://github.com/CameronDenison/CODEBOX/blob/master/Simpsons%20Method/Simpson.m">Simpson.m</a>
***
*function I = Simpson(x,y)*

## Inputs

x - all desitred x values

y - all desired y values

## Outputs

I - Approximated integration value

## How it works
Simpson numerically evaluates the integral using the vector of function values ‘y’ with respect to ‘x’. While
error checking, so that the inputs are the same length and so that the x input is equally spaced. It also warns the user (not an error, just a warning) if the trapezoidal rule 
has to be used on the last interval. ***

*** will still display trapezoidal warning if numbers of intervals is nine.
