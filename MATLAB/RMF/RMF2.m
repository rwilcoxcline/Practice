function [t, u] = RMF1
%Creates a row vector of length 2. These are the inital conditions

u0 = [-1; -1];
%Define the length of time (end points of your time)

tspan = [0;5];
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
figure(2)

end

function dudt =f(t,u);

%dudt=zeros(1, 1);
%Creates a null column vector of length 2 
dudt=zeros(2, 1);
%Define the system

a=.5

beta=8;

dudt(1)= u(1)*(1-u(1)-u(2));
dudt(2)= beta*(u(1)-a)*u(2);

end
