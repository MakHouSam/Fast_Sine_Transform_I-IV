function Qx = Q_n(x) % butterfly matrix (rotational-reflection matrix), input row vector with size 2^n
N = length(x);
    % For even N: [x0, x2, ..., xN-2, x1, x3, ..., xN-1]
    Qx(1:2:(N/2)-1) = sin((1:4:N-1)*pi/(4*N)).*x(1:2:N/2) + cos((1:4:N-1)*pi/(4*N)).*x(N:-2:(N/2)+1);
    Qx(2:2:N/2) = -sin((3:4:N-1)*pi/(4*N)).*x(2:2:N/2) - cos((3:4:N-1)*pi/(4*N)).*x(N-1:-2:(N/2));
    Qx((N/2)+1:N) =  -cos((N-1:-2:1)*pi/(4*N)).*x(N/2:-1:1) + sin((N-1:-2:1)*pi/(4*N)).*x((N/2)+1:N);
    Qx = Qx';
end
% output is column vector