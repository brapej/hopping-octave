#close all
clear all
#clc

addpath ./funkcije


t=-5:0.01:5;


figure(11,'position',[425,250 , 550, 425]);


#Implementacija finalnog impulsa u funkciji x.m, pod '4'

plot(t,x(t,'4'));
title('Finalni impuls');
 xlabel('t [s]');
 ylabel('x(t)');
axis([-2.2 2.2 -0.2 2.2])
grid



#FT finalnog impulsa
  w = -10:0.01:10;
  X =2*(2*sinc(2*w) + sinc(w)); 
  
  figure(12,'position',[1000,250 , 550, 425]);
  
  #Prikaz amplitudske karakteristike
  subplot(2,1,1);
  plot(w,abs(X),'lineWidth',2);
  title('Amplitudska karakteristika');
  xlabel('w [Hz]');
  ylabel('abs(X(w))');
  grid
  
  
  #Prikaz fazne karakteristike
  subplot(2,1,2);
  plot(w,arg(X),'lineWidth',2);
  title('Fazna karakteristika');
  xlabel('w [Hz]');
  ylabel('arg(X(w))');
  grid
  
rmpath ./funkcije

