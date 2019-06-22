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
## @deftypefn {} {@var{retval} =} x (@var{input1}, @var{input2})
##
## @seealso{}
## @end deftypefn

## Author: bpeji <bpeji@DESKTOP-XXXXXXX>
## Created: 2019-01-08

function x = x (t,f_no)
if(f_no == '1')
  x = u(t+1)-u(t-2);
endif

  if(f_no == '2')
  x = u(t)-u(t-3);
endif

  if(f_no == '3')
  x = cos(2*pi*0.01*t);
endif

  if(f_no == '4')
 #Prvi pravougaoni impuls
  x1 = u(t+2)- u(t-2);
 #Drugi pravougaoni impuls
  x2 = u(t+1) - u(t-1);
 #Finalni pravougaoni impuls
  x = x1+x2;
endif

  if(f_no == '5')
  
endif


  
endfunction
