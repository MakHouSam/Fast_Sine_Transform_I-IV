function W2 = w2(x) % input row vector with size 2^n
N = length(x);
cosecant0 = zeros(1,N/2);
for k = 1:N/2
    cosecant0(k) = (csc((N-2*k+1)*pi/(2*N)))/2;
end
W2(1:N/2) = x(1:N/2);
W2(N/2+1:N) = cosecant0.*x(N/2+1:N);
W2 = W2';
end
% output is column vector