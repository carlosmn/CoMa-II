function s = riemann(I, f, n, q)
  % Calculate the Riemann sum for the given parameters
  %
  % I is the internval in vector form, e.g. [0, 1]
  %
  % f is a function handle to the function we're integrating. This
  % function should work on both scalars and vectors
  %
  % n is the number of part-intervals
  %
  % q is the q
  %
  % Example: riemann([0, 1], @sin, 100, 0.5)

xs = linspace(I(1), I(2), n);

% We use x_{k-1} very often, so let's cache that by storing then
% offset once to the left (i.e. fewer, k-1)
[~, len] = size(xs);
xs2 = xs(2:len);

% We can pre-calculate (x_k - x_{k-1}) which we need several times
xdiffs = xs(1:len-1) - xs2;

% \xi_k = x_{k-1} + q(x_k - x_{k-1})
xis = xs2 + q .* xdiffs;

% We now sum f(\xi_k) * (x_k - x_{k-1})
ys = f(xis);

s = sum(ys .* xdiffs);
end
