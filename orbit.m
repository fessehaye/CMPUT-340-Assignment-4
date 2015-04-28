function [yprime] = orbit(~,y)
    % x = y(1), x’ = y(2), y = y(3), y’ = y(4)
    r = sqrt(y(1)*y(1)+y(3)*y(3));
    yprime = [y(2); -y(1)/r^3; y(4); -y(3)/r^3];