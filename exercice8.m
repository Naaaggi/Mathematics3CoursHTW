zp=[4 0 0 0 -4];
np1 = [1 -2];
np2 = [1 2];
np=conv(np1,np2);
r=roots(zp);
[ qp, rp1 ] = deconv( zp, np);
[ r1, xP, g ] = residue( rp1, np); 
a21=[2];
a22=[1 0 -1];
[ r1a, xPa, ga ] = residue( a21, a22); 
b21=[2 3];
b22=[1 3 2];
[ r1b, xPb, gb ] = residue( b21, b22); 
c21=[1 1 1 2];
c22=[1 0 3 0 2];
[ r1c, xPc, gc ] = residue( c21, c22); 
d21=[2 -14 14 30];
d22=[1 0 -4];
[ qpd, rpd ] = deconv( d21, d22);
[ r1d, xPd, gd ] = residue( rpd, d22); 
a3=[1 0 0 0 0 0 -1 0];
na3=roots(a3);
figure(1), compass(na3);
b3=[1 1 1 1 1 1];
nb3=roots(b3);
figure(2), compass(nb3);
c3=[1 0 0 -1i];
nc3=roots(c3);
figure(3), compass(nc3);



