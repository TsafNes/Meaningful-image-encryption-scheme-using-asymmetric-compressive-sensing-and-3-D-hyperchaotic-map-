%����Paper10�ķ���
clear,clc
tau=0.5;  %��ʱ�� ����0.5��ʱ��ѭ��Ҳ�ر�������tau=0.5ʱ��ϵͳ���ȶ���
x0=[-0.8;0.8];    % ���x(1)�ĳ�ʼֵΪ��ֵ����С��-1ʱ��ѭ���ر���������ʱ�����ȶ��ġ�
tspan=[0,50];
global count;count=1;
sol=dde23(@Paper10Fun,tau,x0,tspan)

plot(sol.y(1,:),sol.y(2,:));