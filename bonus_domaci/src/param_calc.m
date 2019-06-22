## Copyright (C) 2019 bpeji
## 
## This program is free software: you can redistribute it and/or modify it
## under the terms of the GNU General Public License as published by
## the Free Software Foundation, either version 3 of the License, or
## (at your option) any later version.
## 
## This program is distributed in the hope that it will be useful, but
## WITHOUT ANY WARRANTY; without even the implied warranty of
## MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
## GNU General Public License for more details.
## 
## You should have received a copy of the GNU General Public License
## along with this program.  If not, see
## <https://www.gnu.org/licenses/>.

## -*- texinfo -*- 
## @deftypefn {} {@var{param_calc} =} param_calc (@var{input1}, @var{input2})
##
## @seealso{}
## @end deftypefn

## Author: bpeji <bpeji@DESKTOP-XXXXXXX>
## Created: 2019-01-04

function param_calc (IME_PREZIME,INDEX_NO, GODINA)
    delete *.txt;
    INDEX_NO_T = INDEX_NO;
    
    sum =0;
  
  while(INDEX_NO_T != 0)
    sum = sum + int64(mod(INDEX_NO_T,10));
    INDEX_NO_T = INDEX_NO_T/10;
    endwhile
  
  	sum = sum-1;
  
  
    P = int64(mod(sum,4));
    Q = int64(mod(sum,3));  
    R = mod(INDEX_NO,2);
    S = mod(INDEX_NO,3); 
        
  f_name = "../parameters.txt";
  fp = fopen(f_name,"w");
  fprintf(stdout,"\nIme i prezime: %s\nBroj indeksa : RM-%d\\%d\n_______\nP = %d\nQ = %d\nR = %d\nS = %d\n_______\n",IME_PREZIME,INDEX_NO,GODINA,P,Q,R,S);
  fprintf(fp,"Ime i prezime: %s\nBroj indeksa:RM-%d\\%d\n_______\nP = %d\nQ = %d\nR = %d\nS = %d\n_______\n",IME_PREZIME,INDEX_NO,GODINA,P,Q,R,S);
               
  fclose(fp);
   
endfunction
