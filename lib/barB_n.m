function Bx = barB_n(x) % input vector with size 2^n - 1
N = length(x);
N1 = (N + 1)/2;
    Bx(1) = x(1) + x(N1);
    Bx(2:2:N1-2) = x(1:2:N1-3) + x(2:2:N1-2) - x(N1);
    Bx(3:2:N1-1) = x(2:2:N1-2) + x(3:2:N1-1) + x(N1);
    Bx(N1) = x(N1-1) - x(N1);
    Bx(N1+1:N) = x(N1+1:N);
    Bx = Bx';
end
% output is column vector