
% input -------------------------------------------------------------------
load('C:\Users\Administrator\Desktop\Codes\Check-out Proportion\fea_pro.mat');
load('C:\Users\Administrator\Desktop\Codes\Check-out Proportion\O.mat');
test=480;
H=720;
% end ---------------------------------------------------------------------

solut;
r_p=[0;11;1100;110;1010;101;1001];
[T c_n]=size(rho);
rho_P=[];
rho_i_1=0;
rho_i_2=0;
for i=T-test+1:T
    
    I=i-H:i-1;
    rho_H=rho(I,:);
    fea_H=fea(I,:);
    
    w_1=abs(fea_H(:,2:5)-repmat(fea(i,2:5),H,1));
    ID=w_1(:,1)*10^3+w_1(:,2)*10^2+w_1(:,3)*10+w_1(:,4);
    [jud,ind]=ismember(ID,r_p);
    lamda_1=(x(ind))';
    
    w_2=fea_H(:,6:7)-repmat(fea(i,6:7),H,1);
    N=exp(-(w_2(:,1).^2/x(8)^2+w_2(:,2).^2/x(9)^2)/2)/(2*pi*x(8)*x(9));
    
    w_h=x(10)*ones(H,1);
    dID=find(fea_H(:,1)==fea(i,1));
    w_h(dID)=x(11);
    dt=repmat(i,H,1)-I';
    d_t=floor(dt/24);
    d_p=min(mod(dt,24),24-mod(dt,24));
    lamda_2=w_h.*(x(12).^d_p.*x(13).^d_t);
    
    % error auto-regression
    w_3=abs(fea(i,3:6)-fea(i-1,3:6));
    ID_3=w_3(:,1)*10^3+w_3(:,2)*10^2+w_3(:,3)*10+w_3(:,4);
    if ID_3==0
        lamda_3=x(14);
    else 
        lamda_3=x(15);
    end
    
    w_4=abs(fea(i,3:6)-fea(i-2,3:6));
    ID_4=w_4(:,1)*10^3+w_4(:,2)*10^2+w_4(:,3)*10+w_4(:,4);
    if ID_4==0
        lamda_4=x(16);
    else 
        lamda_4=x(17);
    end
    
    rho_i=sum(repmat(lamda_1.*N.*lamda_2,1,c_n).*rho_H)/sum(lamda_1.*N.*lamda_2)+lamda_3*(rho(i-1,:)-rho_i_1)+lamda_4*(rho(i-2,:)-rho_i_2);
    rho_i_2=rho_i_1;
    rho_i_1=rho_i;
    rho_P=[rho_P;rho_i];
    
end

C_O=repmat(O',1,c_n).*rho_P;

