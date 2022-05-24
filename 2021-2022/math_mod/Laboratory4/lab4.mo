model lab4
  Real x(start = 0.1);
  Real y(start = -1.1);
equation
  y=der(x);
  der(y)+3.3*y+0.1*x = 0.1*sin(3*time);
end lab4;
