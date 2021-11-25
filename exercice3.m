function [ndeltax,MoeglicheInt,x] = maximalFehler(A,b,relFeh)
x = A\b;
ndeltax = cond(A).*(relFeh+relFeh).*norm(x); %Norm von deltax
MoeglicheInt = [x-ndeltax x+ndeltax]; %möglichen Intervalls
end