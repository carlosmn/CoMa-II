function HP
  A = [0 1; -1 0];
  x0 = [1; 0];

  res = trapez(x0, 0.1, 100, A);
  hold off
  plot(0:0.1:10, res(1,:))
  hold on
  plot(0:0.1:10, res(2,:))
end

function xs = trapez(x0, tau, N, A)
  xs = [ x0 ];
  E = eye(size(A));
  for k = 1:N
    T1 = E + (tau/2.0)*A;
    T2 = inv(E - (tau/2.0)*A);
    
    x = xs(:,k) \ (T1 * T2);

    xin = [x(1); x(2)];
    xs = [xs xin];
  end
end
