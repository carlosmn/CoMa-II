function y = newtonDivDiff(xs, f)
  % Get the size of the vector
  [_, n] = size(xs);

  if n == 1
     y = f(xs(1));
     return
  end

  fprev = arrayfun(f, xs);

  for i=1:n
    %fs = zeros(1, n - i)
    for j=1:(n-i)
	divisor = xs(j) - xs(i+j);
	dividend = fprev(j) - fprev(j+1);
	fs(j) = dividend/divisor;
    end
    fprev = fs;
  end

  y = fprev(1);
end
