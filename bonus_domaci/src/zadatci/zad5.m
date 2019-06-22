clear all
pkg load control

s = tf('s');
G = (3*s+7)/(s^2 + 2*s + 2);

# Nule i polovi u kompleksnoj ravni
z=zero(G);  
p=pole(G);  

#prikaz
 figure(11,'position',[425,250 , 550, 425]);
pzmap(G)
title("Mapa polova i nula [(3*s+7)/(s^2 + 2*s + 2)]")
xlabel("Realna osa")
ylabel("Imaginarna osa")
axis([-2.5 -0.8 -1.2 1.5])
legend('Polovi','Nule');
clear all;