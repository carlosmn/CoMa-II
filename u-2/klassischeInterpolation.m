function ret = klassischeInterpolation(xs, ys, xsplot)
  as = evalKlassischeInterpolation(xs, ys);
  as = as';

  ret = [];
  [dummy, xslen] = size(xs);
  % list of powers
  powers = xslen-1:-1:0;
  [dummy, len] = size(xsplot);
  for i=1:len
    % intermediate results
    mid = xsplot(i).^powers;
    % mid.*as gives us the values for each a_i*x^i
    ret = [ret sum(mid.*as)];
  end
end
