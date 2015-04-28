function [y,t0] = Euler2(~,t0,tend,y0,stepsize)
yend = y0;
count = 1;

y(1,count) = yend(1);
y(2,count) = yend(2);
y(3,count) = yend(3);

while t0 < tend
    yend = yend + lorenz(t0,yend)*stepsize;
    t0 = t0 + stepsize;
    
    y(1,count) = yend(1);
    y(2,count) = yend(2);
    y(3,count) = yend(3);
    count = count + 1;
end