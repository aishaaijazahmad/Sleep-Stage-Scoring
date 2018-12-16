function [y] = kraskov(temp)
    N = size(temp,1);
    m = 2;
    sum = 0;
    k = sqrt(N);
    for i = 1:N-1
        sum = sum + log(temp(i)-k);
    end
    
    y = -psi(k) + psi(N) + log(pi) + (m/N)*sum;
end