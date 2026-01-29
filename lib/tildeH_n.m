function y = tildeH_n(x) % orthogonal matrix, input 2^n vector
N = length(x);
y = zeros(N,1);
    y(1) = x(1) - x(N);
    y(2:N/2) = x(2:N/2) - x(N-1:-1:(N/2)+1);
    y(N/2+1) = x(1) + x(N);
    y(N/2+2:N) = x(2:N/2) + x(N-1:-1:(N/2)+1);
end
% output is column vector
