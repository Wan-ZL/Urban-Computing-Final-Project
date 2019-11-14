
% input -------------------------------------------------------------------
d=load('C:\Users\v-yexli\Desktop\Codes\Check-in Inference\cluster.txt');
load('C:\Users\v-yexli\Desktop\Codes\Check-in Inference\R.mat');
load('C:\Users\v-yexli\Desktop\Codes\Check-in Inference\T_C.mat');
load('C:\Users\v-yexli\Desktop\Codes\Check-in Inference\dM.mat');
% end ---------------------------------------------------------------------

d(:,3)=d(:,3)+1;
c_n=max(d(:,3));
t_S=[];
T=0;
for d_1=11:30
    for h=0:23   
        t_S=[t_S;d_1*10^4+h*10^2 (d_1-11)*24+h+1]; % t/ hour ID
        T=T+1; 
    end
end

I=[];
for i_1=1:T 
    t=t_S(i_1,1);
    borr_B;   % already trip time B/ # seconds # / origin cluster B/ # bikes N
    TrM=T_C{i_1};
    b_Bef;
    I=[I;Rt];
end



        