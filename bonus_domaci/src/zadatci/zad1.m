addpath("funkcije")
#close all
clear all
#clc



t = -5:0.01:5;

#1. Odgovarajuceg signala uzetog sa slike (vrednost parametra P data 
#   je iznad slike): 

    figure(11,'position',[425,250 , 550, 425]);
    
    subplot(3,1,1);
    plot(t,x(t,'1'),"linewidth",2);
    title('P=0');
    xlabel('t');
    ylabel('x(t)');
    axis([-2 4 0 1.2]);
    grid

#a) Prikaz parnog i neparnog dela:
    
     Ev = (x(t,'1') + x(-t,'1'))/2;
     Od = (x(t,'1') - x(-t,'1'))/2;
    
    
    
    #Parni deo
    subplot(3,1,2)
    plot(t,Ev);
    title('Parni deo');
    xlabel('t');
    ylabel('Ev\{x(t)\}');
    axis([-2.2 2.2 0 1.2]);
    grid
    
    #Neparni deo
    subplot(3,1,3)
    plot(t,Od);
    title('Neparni deo');
    xlabel('t');
    ylabel('Od\{x(t)\}');
    axis([-2.2 2.2 -0.6 0.6]);
    grid
    
#b) Postepeni prikaz transformacije signala x(t) u y = x(2 - 2t)

  figure(12,'position',[1000,250 , 550, 425]);
  a = -2;
  b=2;
  
    subplot(2,2,1);
    plot(t,x(t,'1'),"linewidth",2);
    title('P=0');
    xlabel('t');
    ylabel('x(t)');
    axis([-2 2.5 0 1.1]);
    grid
  
  #Skaliranje
  y = x(abs(a)*t,'1');
  subplot(2,2,2);
  plot(t,y);
  title('Skaliranje');
  xlabel('t');
  ylabel('x(2*t)');
  axis([-2 2 0 1.1]);
  grid
  
  #Inverzija
   y = x(a*t,'1');
  subplot(2,2,3);
  plot(t,y);
  title('Inverzija');
   xlabel('t');
   ylabel('x(-2*t)');
   axis([-2 2 0 1.1]);
  grid
  
  #Pomeranje
  y = x(b + a*t , '1');
  subplot(2,2,4);
  plot(t,y);
  title('Pomeranje');
   xlabel('t');
   ylabel('x(2 -2*t)');
  axis([-2 2 0 1.1]);
  grid

  
rmpath("funkcije");