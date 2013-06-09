function HP
  taus = [2 1 0.5 0.1 0.01];
  fmt = ['b', 'g', 'c', 'm', 'k'];

  subplot(2, 2, 1)
  hold off
  i = 1;
  for tau = taus
      ts = 0:tau:10;
      ys = expEuler(1, tau, 10/tau, @(t,x) x);
      plot(ts, ys, fmt(i))
      i = i+1;
      hold on
  end
  plot(0:0.1:10, exp(0:0.1:10), 'r')
  legend('\tau=2', '\tau=1', '\tau=0.5', '\tau=0.1', '\tau=0.01', 'e')

  hold off

  taus = [0.05, 0.01, 0.005];
  fmt = ['b+', 'g+', 'c+'];

  p = 2;
  i = 1;
  for tau = taus
      ts = 0:tau:100;
      [xs, ys] = expEulerA(1, 0, tau, 100/tau, [0 1; -1 0], @(t,x) x);
      subplot(2, 2, p);
      p += 1;
      es = sqrt(xs.^2 + ys.^2);
      plot(ts, xs, 'b', ts, ys, 'g', ts, es, 'r')
      i = i+1;
      hold on
  end

  legend('\tau=0.05', '\tau=0.01', '\tau=0.005')
end
