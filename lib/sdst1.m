function y = sdst1(x) % input vector with size 2^n-1
N1 = length(x);
N2 = N1 + 1;
n1 = N2/2;
if N1 == 1
    y = sqrt(2)*x ;
else
    u1 = H_n(x);
    v1 = w1(u1');
        z1 = sdst1((v1(1:n1-1))'); % column vector
        z2 = v1(n1);
        z3 = sdst1((v1(n1+1:N1))'); % column vector
        z4 = barB_n([z1',z2,z3']');
        y = PT_n(z4); 
end
end

