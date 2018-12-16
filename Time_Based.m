clear
clc

load All_cds;

k = 849000/3000;

meanval = zeros(k, 1);
varval  = zeros(k, 1);
stdval  = zeros(k, 1);
skewval = zeros(k, 1);
maxval  = zeros(k, 1);
minval  = zeros(k, 1);
medval  = zeros(k, 1);
rmsval  = zeros(k, 1);
kurtval = zeros(k, 1);
A = zeros(3000,1);
st=1;
for i = 1:k
    A(st:st+2999,1) = cd5(st:st+2999,1);
    st = st + 3000;
    meanval(i)  = mean(A);
    varval(i)   = var(A);
    stdval(i)   = std(A);
    skewval(i)  = skewness(A);
    maxval(i)   = max(A);
    minval(i)   = min(A);
    medval(i)   = median(A);
    rmsval(i)   = rms(A);
    kurtval(i)  = kurtosis(A);
end    