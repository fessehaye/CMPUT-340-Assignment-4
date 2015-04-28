function [t,y] = cp09_07 
% two-body orbit

e = [0 0.5 0.9];
for i = 1:3 
    for k = 1:6
        tol = 10^(-k);
        options = odeset('RelTol', tol, 'AbsTol', tol*1e-3);
        tic;
        [t,y] = ode45(@orbit,0:0.01:13,[1-e(i);0;0;sqrt((1+e(i))/(1-e(i)))]);
        time(k,i) = toc;
        E = (y(:,2).^2+y(:,4).^2)/2-1./sqrt(y(:,1).^2+y(:,3).^2);
        stdE(k,i) = std(E);
        M = y(:,1).*y(:,4)-y(:,2).*y(:,3); 
        stdM(k,i) = std(M);
    end
end
   
    plot(t, y(:,1));
    
    plot(t, y(:,3));
   
    plot(y(:,1), y(:,3));
    
   
    
    disp(' tol 0.0 0.5 0.9 ');
    for k = 1:6
        tol = 10^(-k);
        fprintf('%8.1e %12.7f %12.7f %12.7f\n', tol, time(k,:));
    end;
    disp(' ');
    disp('Standard deviation of energy for each tolerance and eccentricity:');
    disp(' tol 0.0 0.5 0.9 ');
    for k = 1:6
        tol = 10^(-k);
        fprintf('%8.1e %12.3e %12.3e %12.3e\n', tol, stdE(k,:));
    end;
    disp(' ');
    disp('Standard deviation of angular momentum for each tolerance and eccentricity:');
    disp(' tol 0.0 0.5 0.9 ');
    for k = 1:6
        tol = 10^(-k);
        fprintf('%8.1e %12.3e %12.3e %12.3e\n', tol, stdM(k,:));
    end;
    
    