%% this code reads individual decompostions of each subject and creates one
%% grouped mat file.

load Subject_1_Freq_All_Decomp_Orig

max_subjects = 1;

for i = 1 : max_subjects;
    sub_1{i,1}(:,1) = Delta_Amp;
    sub_1{i,1}(:,2) = Delta_Pow;
    sub_1{i,1}(:,3) = Delta_Phs;
end
save('Subject_1_Freq','sub_1');