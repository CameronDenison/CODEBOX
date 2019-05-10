# <a href="https://github.com/CameronDenison/CODEBOX/blob/master/False%20Position/falsePosition.m">falsePosition.m</a>
***
*function [root,ea,iter,fx] = falsePosition(func,xl,xu,es,maxiter)*

## Inputs

func - input function

xl - lower guess 

xu - upper guess

es - the desired relative error (should default to 0.0001%)

maxiter - the number of iterations desired (should default to 200)

## Outputs

root - the estimated root location

ea - the approximate relative error (%)

iter - how many iterations were performed

fx - the function evaluated at the root location
