function[G]=Givens(u,p,q)
[n,m]=size(u);
In=eye(n);
a=u(p);
b=u(q);
ep=In(:,p);
eq=In(:,q);
c=a/sqrt(a*a+b*b);
s=b/sqrt(a*a+b*b);
G=In+(c-1)*(ep*ep'+eq*eq')+s*(ep*eq'-eq*ep');
end