function aufgabe3a2
  xs = linspace(-1, 1, 11);
  ys = 1./(1.+xs.^2);
  xsplot = linspace(-1, 1, 100);
  reals = 1./(1.+xsplot.^2);

  ret = klassischeInterpolation(xs, ys, xsplot);

  hold off
  plot(xsplot, ret, '+');
  hold on
  plot(xsplot, reals, 'r-');

  legend('Interpoliert', 'Funktion');
end
