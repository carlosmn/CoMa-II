function HP
  %taus = [2 1 0.5 0.1 0.01];
taus = [2 1 0.2 0.5 0.01];
  fmt = ['b', 'g', 'c', 'm', 'k'];

  hold off
  i = 1;
  for tau = taus
      ts = 0:tau:10;
      ys = expEuler(1, tau, 10/tau, -1);
      plot(ts, ys, fmt(i))
      hold on
      i = i+1;
  end
  plot(0:0.1:10, exp([0:0.1:10] * -1), 'r')
  legend('\tau=2', '\tau=1', '\tau=0.5', '\tau=0.1', '\tau=0.01', 'e')
end
