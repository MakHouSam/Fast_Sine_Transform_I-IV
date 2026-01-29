%% setup a random vector
m=4;
N=2^m;
N1=N-1;
x=rand(1,N1);

%% time the calculation of dst1
tic
b1=dst1(x)'/sqrt(2)
time1 = toc
b1=b1';

%% time the calculation of matlab built-in dst (should be faster)
tic
b2=dst(x)
time2 = toc
b2=b2';

%% check if dst1 and dst produce the same results
a=b1-b2;
d=max(a)
