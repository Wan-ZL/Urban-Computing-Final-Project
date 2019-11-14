function f=RMLSE(C)

C=abs(C);

s=size(C,1);

er=0;

for i=1:s
    er=er+(log(C(i,2)+1)-log(C(i,1)+1))^2;
end

f=sqrt(er/s);