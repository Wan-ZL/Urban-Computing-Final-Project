
function [f b_n]=borr(t,R)

f=[];
od_1=find(R(:,1)<=t);
od_2=find(R(:,2)>t);
od=intersect(od_1,od_2);
b=R(od,[1 3]);
b_n=numel(b(:,1));

for i=1:b_n  
    d_1=floor(t/10^4);
    d_2=floor(b(i,1)/10^4); 
    h_1=floor((t-d_1*10^4)/10^2);
    h_2=floor((b(i,1)-d_2*10^4)/10^2);
    m_1=t-d_1*10^4-h_1*10^2;
    m_2=b(i,1)-d_2*10^4-h_2*10^2;
    delta=(((d_1-d_2)*24+(h_1-h_2))*60+(m_1-m_2))*60; 
    f=[f;delta b(i,2)];  % already trip time/ # seconds # / origin station
end

    
