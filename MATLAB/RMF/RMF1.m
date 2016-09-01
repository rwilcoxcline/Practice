function [t, u] = RMF1
%Creates a row vector of length 2. These are the inital conditions

u0 = [.25; 1];
%Define the length of time

tspan = [0;100];
%Use A Runge-Kutta Method to solve an ODE using a given time frame tspan
%and initial condition u0

[t,u] = ode45(@f, tspan, u0);

time = t(:, 1);
figure(1);
%Plots solutions of each u(1) and u(2)
plot(t, u(:, 1));
%Plots phase portrait
subplot(2, 1, 1), plot(t,u(:,1), t,u(:,2));
subplot(2, 1, 2), plot(u(:,1), u(:,2));
title('Graph of Phase Portrait')
end

function dudt =f(t,u);
a=5;
b=4;
c=0;
d=1;
K=100;
m=1;
h=10;

alpha=.25;
r = .5;
g = 9.8;
l = .5;
k =.25;
epsilon=2;
e2 = .1;

%dudt=zeros(1, 1);
%Creates a null column vector of length 2 
dudt=zeros(2, 1);
%Define the lienar system

a=0.3
b=8

dudt(1)= u(1)*(1-u(1)-u(2));
dudt(2)= b*(u(1)-a)*u(2);
end
