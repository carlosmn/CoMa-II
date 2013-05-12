function y = evalNewtonIntPoly(xs, a, x)
  % Get the size of the vector
  [_, n] = size(a);
  
  % The first value is the last a
  s = a(n);
  
  for k=n-1:-1:1
    s = s * (x - xs(k)) + a(k);
  end
  
  y = s;
end
