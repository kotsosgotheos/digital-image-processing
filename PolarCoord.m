function [Rho,Theta] = PolarCoord(R,C)
  
  Rho = zeros(R,C);
  Theta = zeros(R,C);
  x = zeros(R,C);
  y = zeros(R,C);
  x = Rho*cos(Theta);
  y = Rho*sin(Theta);
  for i = 1:1:R
    for j = 1:1:C
    Rho(i,j) = sqrt((x(i,j)-R/2)^2 + (y(i,j)-C/2)^2);
    Theta(i,j) = atan(y(i,j)/x(i,j)); 
    endfor
  endfor
  
endfunction