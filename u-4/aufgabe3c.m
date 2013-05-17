function aufgabe3c
  quad_errors = [];
  quadl_errors = [];
  for n=1:20
    fun = @(x, n) sin((2*n + 1) * x);
    [q, ier, nfun, err] = quad(@(x) fun(x, n), 0, pi, [10e-13 0]);
    quad_errors = [quad_errors err];
    [q, ier, nfun, err] = quadl(@(x) fun(x, n), 0, pi, [10e-13 0]);
    quadl_errors = [quadl_errors err];
  end

  semilogy(1:20, quad_errors);
  semilogy(1:20, quadl_errors);
  legend('quad()', 'quadl()');
end
