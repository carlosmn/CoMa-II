function y = expEuler(x0, tau, N, f)
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here

xs = [ x0 ];
for k = 1:N
    % k_{k+1} = x_k + \tau f(k*\tau, x_k)
    x = xs(k) + tau * f((k-1)*tau, xs(k));
    xs = [xs x];
end

y = xs;
end

