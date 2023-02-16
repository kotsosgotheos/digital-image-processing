function Iout = ImageSpecialEffect(I,Rho,Theta)
  
  [Rho,Theta] = PolarCoord(R,C);
  x1 = zeros(R,C);
  y1 = zeros(R,C);
  
  for i = 1:1:R
    for j = 1:1:C
    x1(i,j) = (R/2) + Rho(i,j)*cos(Theta(i,j));
    y1(i,j) = (C/2) + Rho(i,j)*sin(Theta(i,j));
    if (i<1 && j>C)
      Iout(i,j) = 0;
    elseif (i<1 && j<1)
      Iout(i,j) = 0;
    elseif (i>R && j>C)
      Iout(i,j) = 0;
    elseif (i>R && j<1)
      Iout(i,j) = 0;
    elseif (i>1 && j>C)
      Iout(i,j) = 0;
    elseif (i>1 && j<1)
      Iout(i,j) = 0;
    elseif (i>R && j>1)
      Iout(i,j) = 0;
    elseif (i>R && j<C)
      Iout(i,j) = 0;
    else      
      Iout(i,j) = I(round(x1),round(y1));
    endif
    endfor
  endfor
  
endfunction