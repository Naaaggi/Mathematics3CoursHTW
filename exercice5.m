x1 = -2 : 0.01 : 2.0;
y1 = cos(x1)-x1 ;
figure(1), plot(x1, y1);
grid;
[x1z, f1val, exflag, output] = fzero(@(x1) cos(x1)-x1,1);
[x1s, f12val, exflag, output] = fsolve(@(x1) cos(x1)-x1,1);
x2= 0 : 0.01 : 4.0;
y2=sin(x2)+2.*x2.^(1/2)-1;
figure(2), plot(x2, y2);
grid;
[x2z, f2val, exflag, output] = fzero(@(x2) sin(x2)+2.*x2.^(1/2)-1,1);
[x2s, f22val, exflag, output] = fsolve(@(x2) sin(x2)+2.*x2.^(1/2)-1,1);
x3 = -2 : 0.01 : 2.0;
y3=x3.*exp(x3)-1;
figure(3), plot(x3, y3);
grid;
[x3z, f3val, exflag, output] = fzero(@(x3) x3.*exp(x3)-1,1);
[x3s, f32val, exflag, output] = fsolve(@(x3) x3.*exp(x3)-1,1);
x4= -20 : 0.03 : 20;
y4= 1+ cos(x4).*cosh(x4);
figure(4), plot(x4,y4);
axis([-5 5 -5 5]);
grid;
[x4z, f4val, exflag, output] = fzero(@(x4) 1 + cos(x4).*cosh(x4),7);
[x4s, f42val, exflag, output] = fsolve(@(x4) 1 + cos(x4).*cosh(x4),7);



