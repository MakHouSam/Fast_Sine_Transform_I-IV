function y = dst1(x) % input vector with size 2^n - 1
N1 = length(x);
N2 = N1 + 1;
n1 = N2/2;
if N1 == 1
    y = sqrt(2)*x ;
else
    u1 = H_n(x);
        z1 = dst3((u1(1:n1))'); % column vector
        z2 = dst1((u1(n1+1:N1))'); % column vector
        y = PT_n([z1', z2']');  
end
end
