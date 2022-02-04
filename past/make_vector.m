function x=make_vector(a,b,n)

h=(b-a)/(n-1);

for i=1:21
    x(i)=a+h*(i-1);
end