function HP
  A = [0 1; -1 0];
  x0 = [1; 0];

  res = trapez(x0, 0.1, 100, A);
  first = res(1,:);
  second = res(2,:);
  hold off
  %subplot(2,1,1)
  %plot(0:0.1:10, first, 'b')
  %hold on
  %plot(0:0.1:10, second, 'r')

  dres = [];
  for i=1:length(res)
      d = A * res(:,i);
      dres = [dres d];
  end

  %plot(0:0.1:10, sqrt(dres(1,:).^2 + dres(2,:).^2))
  %subplot(2,1,2)

  N = 20;
  n = newton(1, @(x) cos(x), @(x) -sin(x), -1, N)
  plot(n, 'r')

  hold on
  n = newton(1, @(x) atan(x), @(x) (1/(x^2 + 1)), pi/4.0, N)
  plot(n, 'b')

  n = newton(1, @(x) x^(1/3), @(x) (x^(-2/3))/3.0, 2, N)
  plot(n, 'g')
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

function xs = newton(x0, f, df, y, N)
  xs = [ x0 ];

  for k = 1:N
      xk = xs(k);
      x = xk - ( (f(xk) - y)/df(xk) );
      xs = [xs x];
  end
end
