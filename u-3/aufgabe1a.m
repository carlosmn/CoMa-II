function aufgabe1
  xs = linspace(-3, 3, 20);
  ys = 1./(1.+xs.^2);
  xsplot = linspace(-3, 3, 100);

  retklas = klassischeInterpolation(xs, ys, xsplot);
  retlag = lagrangeInterpolation(xs, ys, xsplot);

  hold off
  plot(xsplot, retlag, 'b+');
  hold on
  plot(xsplot, retklas, 'r');
end
