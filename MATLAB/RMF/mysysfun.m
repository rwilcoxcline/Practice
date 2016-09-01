%first define ODE system
function f=mysysfun(t, X)
f(1,1)=X(1)*(1-X(1))-X(1)*X(2);
f(2,1)=2*X(2)*(1-X(2)/2)-3*(X1)*X(2);
end

