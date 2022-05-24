model lab5
  // стационарное состояние:
  // x=10.29, y=10.27
  Real x(start = 4);
  Real y(start = 14);
  Real a, b, c, d;
equation
  a = 0.38;
  b = 0.037;
  c = 0.36;
  d = 0.035;
  der(x) = -a*x + b*x*y;
  der(y) = c*y - d*x*y;
end lab5;
