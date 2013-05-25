function HP

  real = 0.5 * erf(1) * sqrt(pi);
  errors0 = []; errors05 = [];
  for n=1:500
    calc = riemann([0 1], @(x) exp(-(x.^2)), n, 0);
    error = abs(calc - real);
    errors0 = [errors0 error];

    calc = riemann([0 1], @(x) exp(-(x.^2)), n, 0.5);
    error = abs(calc - real);
    errors05 = [errors05 error];
  end

  hold off;
  semilogy(1:500, errors0, 'r');
  hold on;
  semilogy(1:500, errors05, 'b');

  legend('q=0', 'q=0.5');
end
