function aufgabe3alag
  xs = linspace(-1, 1, 11);
  ys = 1./(1.+xs.^2);
  xsplot = linspace(-1, 1, 100);
  reals = 1./(1.+xsplot.^2);

  retlag = lagrangeInterpolation(xs, ys, xsplot);
  retkla = klassischeInterpolation(xs, ys, xsplot);

  hold off
  plot(xsplot, retlag, '+');
  hold on
  plot(xsplot, reals, '-');
end
