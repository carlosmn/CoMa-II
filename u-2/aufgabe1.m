function aufgabe1
  xs = [0, 1, 2];
  input = linspace(0, 2, 21);

  ys = arrayfun(@(x) evalLagrangeIntPoly(xs, [1 0 0], x), input);
  plot(input, ys, 'r+-');
  hold on
  ys = arrayfun(@(x) evalLagrangeIntPoly(xs, [0 1 0], x), input);
  plot(input, ys, 'g+-');
  ys = arrayfun(@(x) evalLagrangeIntPoly(xs, [0 0 1], x), input);
  plot(input, ys, 'b+-');
  hold on
  ys = arrayfun(@(x) evalLagrangeIntPoly(xs, [1 0 -3], x), input);
  plot(input, ys, '4+-');
  hold off

  legend('L_0', 'L_1', 'L_2', 'Interpolationspolynom');
  title('Lagrange Polynome');
end
