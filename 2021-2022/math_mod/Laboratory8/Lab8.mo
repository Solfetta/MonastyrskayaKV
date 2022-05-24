model Lab8
  Real m1(start = 7.2);
  Real m2(start = 8.2);
parameter Real p_cr = 43;
parameter Real N = 87;
parameter Real q = 1;
parameter Real tau1 = 27;
parameter Real tau2 = 20;
parameter Real p1 = 12;
parameter Real p2 = 9.7;
parameter Real a1 = p_cr/(tau1*tau1*p1*p1*N*q);
parameter Real a2 = p_cr/(tau2*tau2*p2*p2*N*q);
parameter Real b = p_cr/(tau1*tau1*p1*p1*tau2*tau2*p2*p2*N*q);
parameter Real c1 = (p_cr - p1)/(tau1*p1);
parameter Real c2 = (p_cr - p2)/(tau2*p2);
equation
// Случай 1
// der(m1) = m1 - b/c1*m1*m2 - a1/c1*m1*m1;

//Cлучай 2
der(m1) = m1 - (b/c1 + 0.00014)*m1*m2 - a1/c1*m1*m1;

der(m2) = c2/c1*m2 - b/c1*m1*m2 - a2/c1*m2*m2;
end Lab8;
