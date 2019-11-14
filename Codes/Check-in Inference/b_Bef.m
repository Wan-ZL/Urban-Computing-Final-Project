
p_t=3600; % prediction period/ 1 hour = 3600 seconds
Rt=zeros(1,c_n);
for i=1:N
    Ri=zeros(1,c_n);
    for j=1:c_n
        u=dM{B(i,2),j}(1);
        sigma=dM{B(i,2),j}(2);
        t_P=logncdf(B(i,1)+p_t,u,sigma)-logncdf(B(i,1),u,sigma);
        r=TrM(B(i,2),j);
        Ri(j)=t_P*r;
    end
    Rt=Rt+Ri; 
end
    