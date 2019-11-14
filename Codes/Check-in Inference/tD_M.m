
% input -------------------------------------------------------------------
load('C:\Users\v-yexli\Desktop\Codes\Check-in Inference\tD.mat');
% end ---------------------------------------------------------------------

c_n=size(tD,1);
dM=cell(c_n,c_n);

for i=1:c_n
    for j=1:c_n
        
        tS=tD{i,j};
        pd=fitdist(tS','logn');
        
        dM{i,j}=[pd.mu pd.sigma];
        
    end
end
        
        