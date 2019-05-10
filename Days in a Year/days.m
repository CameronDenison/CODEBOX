% Cameron Denison
% 2/3/19
% Mech 105
function nd = days(mo,da,leap)
%creating array with 12 values
year=zeros(12,1);
%changing values
year([1 2 3 4])=[31,28,31,30];
year([5 6 7 8])=[31,30,31,31];
year([9 10 11 12])=[30,31,30,31];
i=1;
nd=0;
while i<mo
    nd=nd+year(i);
    i=i+1;
end
nd=nd+(da-1);
if mo~=2 %to add extra day if leap year
    nd=nd+leap;
end
