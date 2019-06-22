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
## @deftypefn {} {@var{retval} =} y (@var{input1}, @var{input2})
##
## @seealso{}
## @end deftypefn

## Author: bpeji <bpeji@DESKTOP-U2KJMIM>
## Created: 2019-01-09

function g = y (n)
  
  

  y(1) = x(0,'3')/3;
  y(2) = x(1,'3')/3 + y(1);
  y(3) = x(2,'3')/3 + y(2);
    
  
  y(k) = x(k,'3')/3 - x(k-3,'3')/3 + y(k-1);
    
  
ekdfunction
