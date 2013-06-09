function [x,y] = expEulerA(x0, y0, tau, N, A, f)

xs = [ x0 ];
ys = [ y0 ];
for k = 1:N
    id = eye(size(A));
    M = id + ((k-1) * tau * A);
    r0 = [xs(k); ys(k)];
    r = r0 \ M;
    xs = [xs r(1)];
    ys = [ys r(2)];
end

x = xs;
y = ys;
end

