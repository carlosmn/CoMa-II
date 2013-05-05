function aufgabe3b1(n)
  % calculate the values for x
  xs = 1:n-1;
  xs = xs.*(4/(n-1));
  xs = xs.-2;

  ys = xs.^2 + xs*5 - 2;
  xsplot = linspace(-2, 2, 100);
  reals = xsplot.^2 + xsplot*5 - 2;

  ret = lagrangeInterpolation(xs, ys, xsplot);

  hold off
  plot(xsplot, ret, '+');
  hold on
  plot(xsplot, reals, '-');
end
