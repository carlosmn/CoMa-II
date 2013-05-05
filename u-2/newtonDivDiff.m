function ys = newtonDivDiff(xs, input)
  % Get the size of the vector
  [_, n] = size(xs);

  if n == 1
     ys = [f(xs(1))];
     return
  end

  fprev = input;

  ys = [];
  for i=1:n
    % keep the top value, as that's our a_i
    ys = [ys fprev(1)];
    for j=1:(n-i)
	divisor = xs(j) - xs(i+j);
	dividend = fprev(j) - fprev(j+1);
	fs(j) = dividend/divisor;
    end
    fprev = fs;
  end
end
