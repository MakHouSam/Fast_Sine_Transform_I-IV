function W1 = w1(x) % input row vector with size 2^n - 1
N1 = length(x);
N = N1 + 1;
cosecant0 = zeros(1,N/2-1);
for k = 1:N/2-1
    cosecant0(k) = (csc((N-2*k)*pi/(2*N)))/2;
end
W1(1:N/2-1) = cosecant0.*x(1:N/2-1);
W1(N/2:N-1) = x(N/2:N-1);
W1 = W1'; 
end
% output is column vector
