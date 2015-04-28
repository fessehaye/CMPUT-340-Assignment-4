t0 = 1;
tend = 100;
y0 = [0;1;0];
step = 0.001;
[y,t] = Euler2(23,t0,tend,y0,step);
plot(y(1,:),y(2,:));
plot(y(1,:),y(3,:));
plot(y(3,:),y(2,:));