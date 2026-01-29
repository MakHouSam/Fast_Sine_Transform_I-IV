function W3 = w3(x) % input row vector with size 2^n
N = length(x);
cosecant0 = zeros(1,N/2);
for k = 1:N/2
    cosecant0(k) = (csc((N-2*k+1)*pi/(2*N)))/2;
end
W3(1:N/2) = cosecant0.*x(1:N/2);
W3(N/2+1:N) = x(N/2+1:N);
W3 = W3';
end
% output is column vector