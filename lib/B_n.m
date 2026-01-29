function Bx = B_n(x) % input vector with size 2^n 
N = length(x);
N1 = N/2;
    Bx(1:N1+1) = x(1:N1+1);
    Bx(N1+2:N-1) = x(N1+1:N-2) + x(N1+2:N-1);
    Bx(N) = x(N-1) + sqrt(2)*x(N);
    Bx = Bx';
end
% output is column vector