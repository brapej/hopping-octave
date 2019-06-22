clear all
addpath("funkcije")

n = 0:150;
pobuda = x(n,'3');

y(1) = pobuda(1)/3;
y(2) = pobuda(2)/3 + y(1);
y(3) = pobuda(3)/3 + y(2);
  

for k=4:151
  y(k) = pobuda(k)/3 - pobuda(k-3)/3 + y(k-1);
endfor

figure(11,'position',[425,250 , 550, 425]);
stem(x(n,'3'));
axis([-10 100]);
title('Pobuda')
grid

figure(12,'position',[1000,250 , 550, 425]);
stem(n,y);
axis([-10 100]);
title('Odziv')
grid

rmpath("funkcije")