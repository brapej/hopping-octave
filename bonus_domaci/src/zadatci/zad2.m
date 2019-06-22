#close all
clear all
#clc

addpath ./funkcije


# 2. Prikaz odziva sistema ciji je impulsni odziv 
#    h(t) = exp(a*t)*u(t), na pobudu x(t) = u(t) - u(3*t)? 
 
 #Usvojen parametar a kao u prethodnom zadatku
 a = -2;
 
 t = -10:0.001:10;
 y = conv(h(t,a,'2'),x(t,'2'),"same")*0.001;
 
 #close figure(12);
 figure(11,'position',[425,250 , 550, 425]);
 
 
 #Koristeci konvuluciju
 subplot(3,1,1);
 plot(t,h(t,a),'lineWidth',2);
 title('Impulsni odziv');
 xlabel('t [s]');
 ylabel('h(t)');
 axis([-4 6 -0.2 1.2])
 grid
 
 subplot(3,1,2);
 plot(t,x(t,'2'),'lineWidth',2,'r');
 title('Pobuda');
 xlabel('t [s]');
 ylabel('x(t)');
 axis([-4 6 -0.2 1.2])
 grid
 
 


 subplot(3,1,3);
 plot(t,y,'lineWidth',2,'m');
 title('Konvulucija');
 xlabel('t [s]');
 ylabel('y(t)');
 axis([-4 6 -0.2 1.2])
 grid
 
rmpath ./funkcije

