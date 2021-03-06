function HP
  taus = [2 1 0.5 0.2 0.01];
  fmt = ['b', 'g', 'c', 'm', 'k'];

  N = 20;
  lambda = -0.5;
  real = exp([0:0.1:N] * lambda);
  subplot(2,1,1)
  hold off
  subplot(2,1,2)
  hold off

  i = 1;
  for tau = taus
      ts = 0:tau:N;
      ys = expEuler(1, tau, N/tau, lambda);
      subplot(2,1,1)
      plot(ts, ys, fmt(i))
      hold on

      subplot(2,1,2)
      error = abs(exp(ts * lambda) .- ys);
      plot(ts, error, fmt(i));
      hold on

      i = i+1;
  end

  subplot(2,1,1)
  plot(0:0.1:N, real, 'r')
  legend('\tau=2', '\tau=1', '\tau=0.5', '\tau=0.1', '\tau=0.01', 'e')

  subplot(2,1,2)
  legend('\tau=2', '\tau=1', '\tau=0.5', '\tau=0.1', '\tau=0.01')

end

function y = expEuler(x0, tau, N, lambda)
  xs = [ x0 ];
  for k = 1:N
    divisor = 2 - tau * lambda;
    dividend = 2 * xs(k) + tau * lambda * xs(k);
    x = dividend / divisor;
    xs = [xs x];
  end

  y = xs;
end
