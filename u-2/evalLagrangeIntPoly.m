function y = evalLagrangeIntPoly(xs, bs, x)
  % Get the size of the vector
  [dummy, n] = size(bs);

  acc = 0;

  for k=1:n
      acc = acc + bs(k) * l(k, n, x, xs);
  end

  y = acc;
end

function y = l(k, n, x, xs)
  acc = 1;

  for i=1:n
      if i == k
	continue
      end

      acc = acc * ((x - xs(i))/(xs(k)-xs(i)));
  end

    y = acc;
end
