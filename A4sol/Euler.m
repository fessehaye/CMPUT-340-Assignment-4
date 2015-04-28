function [yend] = Euler(f,t0,tend,y0,stepsize)
yend = y0;
while t0 < tend
    yend = yend + f(t0,yend)*stepsize;
    t0 = t0 + stepsize;
end