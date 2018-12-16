k = 849000/3000
meanval = zeros(k, 1)
varval = zeros(k, 1)
stdval = zeros(k, 1)
skewval = zeros(k, 1)
maxval = zeros(k, 1)
minval = zeros(k, 1)
snrval = zeros(k, 1)
A = zeros(3000,1)
st=0
for i = 0:k
    for j = st:st+3000
        A(j) = cd5(j)
    end
    st = st + 3000
    meanval(i) = Mean(A)
    varval(i) = Var(A)
    stdval(i) = std(A)
    skewval(i) = skewness(A)
    maxval(i) = max(A)
    minval(i) = min(A)
    snrval(i) = snr(A)
    
end    