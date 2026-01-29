function y = dst4(x) % input row vector with size 2^n
     N2 = length(x);
     n2 = N2/2;
if N2 == 2
      y = sqrt(2)*[sin(pi/8),cos(pi/8);cos(pi/8),-sin(pi/8)]* x';
else
      u2 = Q_n(x);
          z3 = dst2((u2(1:n2))');
          z4 = dst2((u2(n2+1:N2))');
          %w = sqrt(2)*V_n([z3', z4']');
          w = V_n([z3', z4']');
          y = PT_n(w);
 end
 end