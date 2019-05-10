# <a href="https://github.com/CameronDenison/CODEBOX/blob/master/LU%20Decomposition/luFactor.m">luFactor.m</a>
***
*function [L,U,P] = luFactor(A)*

## Inputs

A - coefficient matrix

## Outputs

L - lower triangular matrix

U - upper triangular matrix

P - the pivot matrix

## How it works
luFactor calculates the LU decomposition of the array A using
pivoting to avoid subtraction cancelation error. This is done by setting up the identity matrices with the
correct zeros and ones. They are then applied to the A array using partial pivoting. These are used to create the L matrix and the U Matrix.
