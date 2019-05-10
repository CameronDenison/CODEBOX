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
## How it works
The false position algorithm allows the user to input their desired function, with their upper and lower guess. You can also input the desired relative error and the max number of iterations desired. If there is only 3 inputs, the relative error will defaualt to 0.0001% and the number of iterations will default to 200. If there is 4 inputs then just the iterations are defaulted. The code uses the input values to calculate the estimated root. It then determines whether the estimation will become the new upper or lower bound based on the sign of said estimation. The function then performs an error check. If the set criteria has been met the function ends.
