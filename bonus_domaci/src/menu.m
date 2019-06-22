

function menu()

fp = fopen("../parameters.txt","r");

str ="";
str2="";

for i=0:9
  
if(i<2)
  
  if(i==1)
  str = cstrcat(str, "      .");
  endif

  #str = cstrcat(str, "         ");
  #str = cstrcat(str, " . ");
  endif
  
  if( i==2 ) 
  fgets(fp);
  str2=strcat(str2,"Parametri:\n");
endif

  if(i==6)
  fgets(fp);
  endif
  
  
  if(i>=2)
  str2 = strcat(str2,fgets(fp));
  continue
  endif

  str = strcat(str,fgets(fp));

  endfor



fclose(fp);
   
f = figure(1, 'position', [100,230 , 280, 550]);

t1 = uicontrol (f,"style", "text",
                               "units", "normalized",
                               "string", str,
                               "horizontalalignment", "left",
                               "position", [0.13 0.75 0.99 0.30]

                               );
                               
t2 = uicontrol (f,"style", "text",
                               "units", "normalized",
                               "string", str2,
                               "horizontalalignment", "left",
                               "position", [0.14 0.0 0.99 0.30]);                                    

b1 = uicontrol (f,"style", "pushbutton",
                  "string", "I Zadatak",
                  "value", 0,
                  "callback", {@run_z1}
                  ,"position", [50 440 150 40]);
                  
b2 = uicontrol (f,"style", "pushbutton",
                  "string", "II Zadatak",
                  "position", [50 365 150 40],
                  "callback", {@run_z2});
                  
b3 = uicontrol (f,"style", "pushbutton",
                 "string", "III Zadatak",
                  "position", [50 290 150 40],
                  "callback", {@run_z3});
 
b4 = uicontrol (f,"style", "pushbutton",
                  "string", "VI Zadatak",
                  "position", [50 215 150 40],
                  "callback", {@run_z4});
                  
b5 = uicontrol (f,"style", "pushbutton",
                  "string", "V Zadatak",
                  "position", [50 140 150 40],
                  "callback", {@run_z5});


return   
endfunction
   


function run_z1()


open zadatci/zad1.m
close all;
menu;
run zadatci/zad1.m

 return;
end

function run_z2() 

open zadatci/zad2.m
close all;
menu;
run zadatci/zad2.m

  return;
end

function run_z3() 
 open zadatci/zad3.m
close all;
menu;
run zadatci/zad3.m
end

function run_z4() 
open zadatci/zad4.m
close all;
menu;
run zadatci/zad4.m
 
  return;
end

function run_z5() 
open zadatci/zad5.m
close all;
menu;
run zadatci/zad5.m

pause(1);
cd zadatci
open zad5.zcos
cd ..





  return;
end

  