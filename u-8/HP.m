function HP
  taus = [20 5 0.5 0.2 0.01];
  fmt = ['b', 'g', 'c', 'm', 'k'];

  N = 2000;
  lambda = -100;
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
