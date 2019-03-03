X =[2 1; 6 5; 1 2; 5 6; 0 1; 4 5;1 0;5 4]';
Y = [1 2 1 2 1 2 1 2];
w1=X(:,1);
w2=X(:,2);
W=[w1,w2];
n=length(Y);
for q=1:500
for k=3:n
    d1=sum((X(:,k)-w1).^2);
    d2=sum((X(:,k)-w2).^2);
    T=Y(k);
    if(d1<d2)
        c=1;
    else
        c=2;
    end
    if(T==c)
        W(:,c)=W(:,c)+(0.1)*(X(:,k)-W(:,c));
    else
       W(:,c)=W(:,c)-(0.1)*(X(:,k)-W(:,c));
    end
        
end
end
    



