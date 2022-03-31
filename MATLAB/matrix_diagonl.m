syms  wq wq2 co1 si1 co2 si2 g;
H=[wq+wq2+g*co1*co2,g*co1*si2,g*si1*co2,g*si1*si2;g*co1*si2,wq-wq2-g*co1*co2,g*si1*si2,-g*si1*co2;g*si1*co2,g*si1*si2,-wq+wq2-g*co1*co2,-g*co1*si2;g*si1*si2,-g*si1*co2,-g*co1*si2,-wq-wq2+g*co1*co2];
d=eig(H);