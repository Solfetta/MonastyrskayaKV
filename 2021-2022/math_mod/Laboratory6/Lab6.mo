model Lab6
  Real S(start = 10925);
  Real I(start = 230);
  Real R(start = 45);
  Real a;
  Real b;
equation
  a = 0.01;
  b = 0.02;
  // Первый случай. I(0) <= I*
  //der(S) = 0;
  //der(I) = -b*I;
  
  // Второй случай. I(0) Ю I*
  der(S) = -a*S;
  der(I) = a*S - b*I;
  
  der(R) = b*I;


end Lab6;
