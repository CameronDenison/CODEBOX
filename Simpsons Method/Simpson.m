%Cameron Denison
%4/18/19
%Mech 105
%Function: (function I = Simpson(x,y)) 
%The function numerically evaluates the integral
%The function uses the vector of function values ‘y’ with respect to ‘x’
%WHILE
%• Error checking, so that the inputs are the same length
%• Error checking, so that the x input is equally spaced
%• Warning the user (not an error, just a warning) if the trapezoidal rule 
%  has to be used on the last interval.
function I = Simpson(x,y)
if length(x)~=length(y)
    error('inputs must be same length')
    return
end
%checking if the input array is evenly spaced
a=x(1) %gathering the first element of x
n=length(x) %gathering the length of x
b=x(n) % using the length of x to gather last element of x
%creating a linear array using the first, last, and length of x
check = linspace(a,b,n)
ncheck = isequal(check,x)
if ncheck ~= 1 %if x input is linearly spaced it should equal linspace(a,b,n)
    error('x input must be equally spaced')
end
test=((n-1)/2); %amount of intervals is equal to length -1
%if odd amount of intervals test should be a decimal
test2=floor(test);%floor brings the value down to the closest integer
testcheck = isequal(test,test2);%if test2 - test = 0 then there is an even amount of intervals
if testcheck == 0
    warning('trap rule must be used for the last x value')
end
n = length(x);            
h = (x(n)-x(1))/(n-1); %finding height  
ymide=sum(y(2:2:n-2));
ymido=sum(y(3:2:n-3));
%Perform integration
if testcheck == 0 %Total number of integration values is odd.
    Intodd = (h/3)*((4*(ymide))+(2*(ymido))+y(n-1)+y(1));
    ITrap = (x(n)- x(n-1))*((y(n-1)+y(n))/2);%Performing trapezoidal rule for the last interval
    Totalintodd = Intodd + ITrap %adding the trap rule and other int for totalint
else %Total number of integration values is even. No additional trap rule needed
    Totalinteven =(h/3)*((4*(ymide))+(2*(ymido))+y(n-1)+y(1))
end

end
