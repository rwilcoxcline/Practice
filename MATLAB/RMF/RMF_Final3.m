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

%dudt=zeros(1, 1);
%Creates a null column vector of length 2 
dudt=zeros(2, 1);
%Define the linear system

a=.5
b=10
c=.25
d=1


x=u(1)/((u(1)^2+u(1)+1))
x1=(1-u(1)/c)*(u(1)^2/a+u(1)+1)
x2=b*x-1

dudt(1)= x*(x1-u(2))
dudt(2)= d*x2*u(2)
end
