function [y] = Renyi(temp)
    m = 2;
    y = 1/(1-m)*log2(sum(temp.^2));
end