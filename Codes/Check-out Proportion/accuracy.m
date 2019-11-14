
er=0;
E=[];

for i=1:test  
    
    c=[round(C_O(i,:)') m_o(4392-480+i,:)'];
    e=RMLSE(c);
    er=er+e;
    E=[E;e];
    
end

er=er/test


      