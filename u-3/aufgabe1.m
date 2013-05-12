function aufgabe1
  xs = linspace(-3, 3, 70);
  ys = 1./(1.+xs.^2);
  xsplot = linspace(-3, 3, 100);
  reals = 1./(1.+xsplot.^2);

  retlag = lagrangeInterpolation(xs, ys, xsplot);

  hold off
  plot(xsplot, retlag, '+');
end
