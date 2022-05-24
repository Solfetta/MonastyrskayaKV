model Lab7
  Real n(start = 13);
  
  Real N, y;
equation
  N = 945;
  
  // Случай 1
  // der(n) = (0.51 + 0.000099*n)*(N - n);
  
  // Случай 2
  der(n) = (0.000019 + 0.99*n)*(N - n);
  y = der(n);
  
  // Случай 3
  // der(n) = (0.99*time + 0.3*cos(4*time)*n)*(N - n);

end Lab7;
