
eps=0.01;

w=zeros(15,17);

for i=1:6
    w(i,i:i+1)=[-1 1.1];
end
w(7,10:11)=[1.01 -1];
w(8,14:15)=[-1 1.2];
w(9,16:17)=[-1 1.2];
w(10,[14 16])=[-1 1.2];
w(11,[15 17])=[-1 1.2];
for i=1:7
    w(11+i,i)=-1;
end
w(19,8)=-1;
w(20,9)=-1;
w(21,12)=-1;
w(22,13)=-1;

A=[-eye(17,17);eye(17,17);w];

b=[-eps*ones(17,1);ones(17,1);zeros(15,1)];
b(14)=-0.2;
b(15)=-0.2;
b(16)=-0.2;
b(17)=-0.2;
for i=1:7
    b(34+11+i)=-0.5;
end
b(53)=-0.7;
b(54)=-0.7;
b(55)=-0.5;
b(56)=-0.9;

[x fmin]=ga(@func,17,A,b)




























