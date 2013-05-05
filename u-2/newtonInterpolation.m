function ret = newtonInterpolation(xs, ys, xsplot)
  [_, n] = size(xs);
  % figure out the factors for Horner
  as = newtonDivDiff(xs, ys);

  ret = arrayfun(@(x) evalNewtonIntPoly(xs, as, x), xsplot);  
end
