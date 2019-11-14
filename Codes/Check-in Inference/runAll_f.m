
% input -------------------------------------------------------------------
test=480;
d=load('C:\Users\v-yexli\Desktop\Codes\Check-in Inference\cluster.txt');
load('C:\Users\v-yexli\Desktop\Codes\Check-in Inference\p_o.mat');
load('C:\Users\v-yexli\Desktop\Codes\Check-in Inference\T_C.mat');
load('C:\Users\v-yexli\Desktop\Codes\Check-in Inference\dM.mat');
% end ---------------------------------------------------------------------

d(:,3)=d(:,3)+1;
c_n=max(d(:,3));
I=[];
for i_2=1:test
    C_o=p_o(i_2,:);
    TrM=T_C{i_2};
    b_Aft;
    I=[I;Rt_o];
end
