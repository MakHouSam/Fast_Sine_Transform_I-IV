function Bx = BT_n(x) % input vector with size 2^n 
N = length(x);
N1 = N/2;
    Bx(1:N1-1) = x(1:N1-1) + x(2:N1);
    Bx(N1) = sqrt(2)*x(N1);
    Bx(N1+1:N) = x(N1+1:N);
    Bx = Bx';
end
% output is column vector