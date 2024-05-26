function dx=Paper10Fun(t,x,Z)
dx=zeros(2,1);
global count;
count=count+1;
disp(['Count=', num2str(count), ' T= ', num2str(t)]);

C=[1 0;0 1];
A=[2 -0.1;-5 4.5];
B=[-1.5 -0.1;-0.2 -4];

% C=[1.2 0;0 1.5];
% A=[2 -0.1;2 -2];
% B=[-1.5 -0.1;-0.2 -4];

lag=Z(:,1);

dx(1)=-C(1,1)*x(1)+A(1,1)*Fun(x(1))+A(1,2)*Fun(x(2))+B(1,1)*Fun(lag(1))+B(1,2)*Fun(lag(2))+0.05*x(1)^2;  %最后一项是扰动
dx(2)=-C(2,2)*x(2)+A(2,1)*Fun(x(1))+A(2,2)*Fun(x(2))+B(2,1)*Fun(lag(1))+B(2,2)*Fun(lag(2))+0.2*lag(2);  %最后一项是扰动


end


function y=Fun(x)
if x>0
    y=tanh(x)+0.05;
else
    y=tan(x)-0.04;
end
end