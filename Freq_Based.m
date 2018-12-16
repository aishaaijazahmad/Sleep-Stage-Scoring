clear
clc

load Subject_1_Freq
ii = 1;
for i = 1 : 1   %% for Each subject
    if i ==1;
        A = sub_1{i,1}(:,1);
        B = sub_1{i,1}(:,2);
        C = sub_1{i,1}(:,3);
    elseif i == 2
        A = sub_1{i,1}(:,1);
        B = sub_1{i,1}(:,2);
        C = sub_1{i,1}(:,3);
    end
    
    cnt = size(:,1)/3000;
    
    tempA = zeros(3000,1);      %%Amplitude
    tempB = zeros(3000,1);      %%Power
    tempC = zeros(3000,1);      %%Phase
    freq = zeros(cnt,9);
    
    
    for j = 1: 8        %% for each decomp Signal (1-8)
        n = 9*(j-1);
        st=1;
        
        for k = 1:cnt     %% for each subgroup of 3000
            tempA = A(st:st+2999,j);
            tempB = B(st:st+2999,j);
            tempC = C(st:st+2999,j);
    
            freq(k,1+n) = kraskaov(tempA);
            freq(k,2+n) = kraskaov(tempB);
            freq(k,3+n) = Renyi(tempB);
            freq(k,4+n) = mean(tempC);
            freq(k,5+n) = std(tempC);
            freq(k,6+n) = skewness(tempA);
            freq(k,7+n) = kurtosis(tempA);
            st = st + 3000;
            %ii = ii + 1;
            str = sprintf('%d %d %d ',i,j,k);
            disp(str)
        end    
    end
end