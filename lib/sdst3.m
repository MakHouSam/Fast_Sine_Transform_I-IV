function y = sdst3(x) % input vector with size 2^n
N1 = length(x);
n1 = N1/2;
if N1 == 2
    y = [1,1;1,-1]* x';
else
    u1 = P_n(x);
    v1 = BT_n(u1');
    z1 = sdst3((v1(1:n1))'); 
    z2 = sdst3((v1(n1+1:N1))');
    z3 = w3([z1',z2']);
     y = HT_n(z3);
end
end