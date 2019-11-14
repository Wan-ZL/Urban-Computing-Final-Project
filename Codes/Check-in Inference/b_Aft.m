
Rt_o=zeros(1,c_n);

for p=1:60
    for i=1:c_n      
        Ri_o=zeros(1,c_n);
        for j=1:c_n
            u=dM{i,j}(1);
            sigma=dM{i,j}(2);
            t_P=logncdf(3600-p*60,u,sigma);
            r=TrM(i,j);
            Ri_o(j)=t_P*r*C_o(i)/60;  
        end
        Rt_o=Rt_o+Ri_o;
    end
end
