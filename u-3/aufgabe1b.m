function aufgabe1b
  xs = linspace(-1, 1, 20);
  xsplot = linspace(-1, 1, 100);

  data = get_prod(xsplot, xs);
  hold off
  plot(xsplot, data, 'b+');

  xs = linspace(-3, 3, 20);
  xsplot = linspace(-3, 3, 100);

  data = get_prod(xsplot, xs)

  hold on
  plot(xsplot, data, 'r+');
end

function p = get_prod(xsplot, xs)
  [_, len] = size(xsplot);
  data = [];
  % This is the x - x_k part
  for i=1:len
    med = xsplot(i) .- xs;
    data = [data; med];
  end

  % and here we have rows of them, so let's do the product and get the
  % absolute values
  data = abs(prod(data, 2));

  p = data;
end
