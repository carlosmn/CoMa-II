function aufgabe4b1
  % calculate the values for x
  xs = bases(10);
  ys = xs.^2 + xs*5 - 2;
  xsplot = linspace(-2, 2, 100);
  reals = xsplot.^2 + xsplot*5 - 2;

  ret = newtonInterpolation(xs, ys, xsplot);

  hold off
  plot(xsplot, ret, 'b+');
  hold on
  plot(xsplot, reals, 'r-');

  xs = bases(100);
  ys = xs.^2 + xs*5 - 2;
  ret = newtonInterpolation(xs, ys, xsplot);
  hold on
  plot(xsplot, ret, 'gx');

  axis([-2 2 -10 15]);
  legend('Mit 10', 'Echte Werge');
end

function xs = bases(n)
  xs = 1:n-1;
  xs = xs.*(4/(n-1));
  xs = xs-2;
end
