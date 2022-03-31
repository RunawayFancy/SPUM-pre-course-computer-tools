tspan = [0 50];
y0=[0 0.001];


sol1 = ode45(@rua1,tspan,y0);
sol2 = ode45(@rua2,tspan,y0);
sol3 = ode45(@rua3,tspan,y0);
sol4 = ode45(@rua4,tspan,y0);
sol5 = ode45(@rua5,tspan,y0);
sol6 = ode45(@rua6,tspan,y0);
sol7 = ode45(@rua7,tspan,y0);

t = linspace(0,35,350);
y1 = deval(sol1,t);
y2 = deval(sol2,t);
y3 = deval(sol3,t);
y4 = deval(sol4,t);
y5 = deval(sol5,t);
y6 = deval(sol6,t);
y7 = deval(sol7,t);


plot(t,y1(1,:),t,y2(1,:),t,y3(1,:),t,y4(1,:),t,y5(1,:),t,y6(1,:),t,y7(1,:))
% legend('\theta, \omega2 = 81, r=0.5m, \dot{\theta}_0 = 9','d\theta/dt')
legend('Group2-1','Group2-2','Group2-3','Group2-4','Group2-5','Group2-6','Group2-7')
xlabel('Time t (s)');
ylabel('Angle \theta (rad)');



function dydt = rua1(t,y)

dydt = [y(2);1/2*100*sin(2*y(1))-9.8*sin(y(1))/0.1-0.3*y(2)/0.1];
% dydt = [y(2);1/2*w^2*sin(2*y(1))-9.8*sin(y(1))/r-a/r*y(2)];

end 

function dydt = rua2(t,y)

dydt = [y(2);1/2*100*sin(2*y(1))-9.8*sin(y(1))/0.2-0.3*y(2)/0.2];
% dydt = [y(2);1/2*w^2*sin(2*y(1))-9.8*sin(y(1))/r-a/r*y(2)];

end 

function dydt = rua3(t,y)

dydt = [y(2);1/2*100*sin(2*y(1))-9.8*sin(y(1))/0.3-0.3*y(2)/0.3];
% dydt = [y(2);1/2*w^2*sin(2*y(1))-9.8*sin(y(1))/r-a/r*y(2)];

end 

function dydt = rua4(t,y)

dydt = [y(2);1/2*100*sin(2*y(1))-9.8*sin(y(1))/0.4-0.3*y(2)/0.4];
% dydt = [y(2);1/2*w^2*sin(2*y(1))-9.8*sin(y(1))/r-a/r*y(2)];

end 

function dydt = rua5(t,y)

dydt = [y(2);1/2*100*sin(2*y(1))-9.8*sin(y(1))/0.5-0.3*y(2)/0.5];
% dydt = [y(2);1/2*w^2*sin(2*y(1))-9.8*sin(y(1))/r-a/r*y(2)];

end 

function dydt = rua6(t,y)

dydt = [y(2);1/2*100*sin(2*y(1))-9.8*sin(y(1))/0.6-0.3*y(2)/0.6];
% dydt = [y(2);1/2*w^2*sin(2*y(1))-9.8*sin(y(1))/r-a/r*y(2)];

end 

function dydt = rua7(t,y)

dydt = [y(2);1/2*100*sin(2*y(1))-9.8*sin(y(1))/0.7-0.3*y(2)/0.7];
% dydt = [y(2);1/2*w^2*sin(2*y(1))-9.8*sin(y(1))/r-a/r*y(2)];

end 