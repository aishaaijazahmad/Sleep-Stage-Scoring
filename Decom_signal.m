clear
clc
load ('Fpzoz');
%XD = wden(X,'modwtsqtwolog','s','mln',6,'db2');

[c, l]  = wavedec(X,6,'db8');
approx = appcoef(c,l,'db8');
[cd1, cd2, cd3, cd4, cd5] = detcoef(c, l, [1 2 3 4 5]);

subplot(6, 1, 1)
plot(approx)
title('Approximation Coefficients')
subplot(6, 1, 2)
plot(cd5)
title('GAMMA')
subplot(6, 1, 3)
plot(cd4)
title('BETA')
subplot(6, 1, 4)
plot(cd3)
title('ALPHA')
subplot(6, 1, 5)
plot(cd2)
title('THETA')
subplot(6, 1, 6)
plot(cd1)
title('DELTA')

save('All_Cds', 'cd1', 'cd2','cd3','cd4','cd5');