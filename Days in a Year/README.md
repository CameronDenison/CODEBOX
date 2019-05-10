# <a href="https://github.com/CameronDenison/CODEBOX/blob/master/Days%20in%20a%20Year/days.m">days.m</a>
***
*function [nd] = days(mo,da,leap)*

## Inputs

mo - desired month

da - desired day

leap - if the desired year is a leap year enter 1, otherwise enter 0

## Outputs

nd - the number of days that have passed in the year

## How it works
Days works by using the input values to determine the number of days that have passed in a year. If it is a leap year, an extra day is added.***


*** This does not account for desired dates that are before February 29 on a leap year.
