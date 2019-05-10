%% False Position 
% by Cameron Denison
% Mech 105
function [root,ea,iter,fx] = falsePosition(func,xl,xu,es,maxiter)
% Inputs
% func - input function
% xl - lower guess 
% xu - upper guess
% es - the desired relative error (should default to 0.0001%)
% maxiter - the number of iterations desired (should default to 200)
% Outputs
% root - the estimated root location
% ea - the approximate relative error (%)
% iter - how many iterations were performed
% fx - the function evaluated at the root location
%%False Position method
if nargin<3 %throwing error if not enough inputs are entered
    error('at least 3 input arguments are required')
end
trial = func(xl) * func(xu);
if trial>0 
    error('no sign change')
end
if nargin < 4|isempty(es) %defaulting es to .0001
es = 0.0001;
end
if nargin < 5|isempty(maxiter) %defaulting maxiter to 200
    maxiter = 200;
end
iter = 0;
xr = xl;
ea = 100;
while (1)
    xrlast = xr;
    xr = (xu-((func(xu)*(xl-xu))/func(xl)-func(xu)))
    iter = iter+1 %counter
    if xr ~= 0
        ea = abs((xr-xrlast)/xr) * 100;
    end
    trial = func(xl) * func(xr); %defining new guess values
    if trial < 0
        xu = xr
    elseif trial > 0
        xl = xr;
    else
        ea = 0;
    end
    if ea <= es | iter >= maxiter
        break
    end
end
root = xr; %defining root and function evaluated at root for output values
fx = func(xr);   
