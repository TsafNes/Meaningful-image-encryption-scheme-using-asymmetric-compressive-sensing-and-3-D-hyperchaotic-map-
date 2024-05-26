%论文Paper10的仿真
clear,clc
tau=0.5;  %当时延 超过0.5的时候循环也特别慢，当tau=0.5时，系统有稳定点
x0=[-0.8;0.8];    % 如果x(1)的初始值为正值或者小于-1时，循环特别慢，其他时候都是稳定的。
tspan=[0,50];
global count;count=1;
sol=dde23(@Paper10Fun,tau,x0,tspan)

plot(sol.y(1,:),sol.y(2,:));