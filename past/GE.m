function [U,x]=GE(A,b);
% GE to solve Ax=b where upper triangle matrix U is the output.
U=A; f=b;
n=length(A); x=zeros(size(b));
for k=1:n-1
    
   [mv,pivot]=max(abs(U(k:n,k))); pivot=pivot+(k-1); % pivoting starts
   temp=U(pivot,:); temp1=f(pivot);
   U(pivot,:)=U(k,:); f(pivot)=f(k);
   U(k,:)=temp; f(k)=temp1; % pivoting ends
   
   for i=k+1:n % elimination step
        m=U(i,k)/U(k,k);
        U(i,k:n)=U(i,k:n)-m*U(k,k:n);
        f(i)=f(i)-m*f(k);
   end
end

x(n)=f(n)/U(n,n); % backward substitution
for i=n-1:-1:1
    x(i)=(f(i)-sum(U(i,i+1:n).*x(i+1:n)'))/U(i,i);
end