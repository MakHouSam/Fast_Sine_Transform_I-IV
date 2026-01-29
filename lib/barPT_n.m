function Px = barPT_n(x) % transpose of odd-even permutation matrix
    N = length(x);
    Px = zeros(N, 1);
    if mod(N, 2) == 0
        % For even N: [x1, x3, ..., xN-1, x0, x2, ..., xN-2]
        Px(1:2:N) = x((N/2)+1:N);
        Px(2:2:N) = x(1:N/2);
    else
        % For odd N: [x1, x3, ..., xN-2, x0, x2, ..., xN-1]
        Px(1:2:N) = x((N+1)/2:N);
        Px(2:2:N) = x(1:(N-1)/2);
    end
end
% output is column vector