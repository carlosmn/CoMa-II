function ret = evalKlassischeInterpolation(xs, ys)
  ys = ys'; % we need a column vector
  [_, len] = size(xs);

  A = [];
  for i=1:len
      values = xs'.^(i-1);
      A = [values A];
  end

  ret = A \ ys;
end
