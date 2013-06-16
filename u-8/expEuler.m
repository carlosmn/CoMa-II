function y = expEuler(x0, tau, N, lambda)
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here

xs = [ x0 ];
for k = 1:N
    % x_{k+1} = x_k + \tau f(k*\tau, x_k)
    %x = xs(k) + tau * f((k-1)*tau, xs(k));
    % x_{k+1} = x_k + \tau/2 (f(t) + f(t + \tau))
    % x = xs(k) + (tau/2) * (f((k-1), xs(k)) + f((k-1) + tau, xs(k)));
    divisor = 2 - tau * lambda;
    dividend = 2 * xs(k) + tau * lambda * xs(k);
    x = dividend / divisor;
    xs = [xs x];
end

y = xs;
end

