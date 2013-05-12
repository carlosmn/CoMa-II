function ret = lagrangeInterpolation(xs, ys, xsplot)
  ret = arrayfun(@(x) evalLagrangeIntPoly(xs, ys, x), xsplot);
end
