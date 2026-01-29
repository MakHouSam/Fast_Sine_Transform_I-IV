function Vx = V_n(x) % sparse matrix, it's sqrt(2)*V_n
    N = length(x);
    y = zeros(N,1);
        % For even N: [x0, x2, ..., xN-2, x1, x3, ..., xN-1]
        y(1:N/2) = x(N/2:-1:1);
        y((N/2)+1:2:N-1) = x((N/2)+1:2:N-1);
        y((N/2)+2:2:N) = -x((N/2)+2:2:N);
        z = zeros(N,1);
        z(1) = sqrt(2)*y(1);
        z(2:N/2) = y(2:N/2) - y((N/2)+1:N-1);
        z((N/2)+1:N-1) = -y(2:N/2) - y((N/2)+1:N-1);
        z(N) = -sqrt(2)*y(N);
        %Vx = (1/sqrt(2)).*z;
        Vx = z;
    
end
% output is column vector