# Exercițiul 1
x1 = 1;
x2 = -2;
x3 = [2, 3];
x4 = [1 2; 3 4];

function y = f1(x)
  y = x.^2 + exp(x);
end
f1(x1)
f1(x2)
f1(x3)
f1(x4)

f2 = @(x) x.^2 + exp(x); # sau f2 = @f1;
f2(x1)
f2(x2)
f2(x3)
f2(x4)

# Obsolete!
f3 = inline('x.^2 + exp(x)', 'x')
f3(x1)
f3(x2)
f3(x3)
f3(x4)

# Exercițiul 2
function y = hilbert(n)
  y = zeros(n);
  for i = 1:n
    for j = 1:n
      y(i,j) = 1/(i + j - 1);
    end
  end
end

hilbert(5)

# Exercițiul 3
function m = ex3(n)
  D = diag([1:n, fliplr(1:n)]);
  DA = repmat([1 2], 1, n); DA(end) = [];
  DB = repmat([1 0], 1, n); DB(end) = [];
  m = D + diag(DA, 1) + diag(DB, -1);
end
ex3(4)

# Exercițiul 4
function y = S(n)
  y = 1;
  for k=2:n
    y = y + 1/k^2;
  end
end

for i = 1:5
  display(pi^2/6 - S(10^i))
end
# Exercițiul 5
function y = ln(x, N)
  y = 0;
  for i=1:N
    y = y + (-1).^(i + 1) .* x.^i ./ i;
  end
end

display(ln([-1.1:0.1:1.1], 10000))

# Exercițiul 6
function I = trapez(f, a, b, N)
  h = (b - a) / N;
  x = linspace(a, b, N);
  I = 0;
  for k = 1:N-1
    I = I + h/2 * (f(x(k)) + f(x(k + 1)));
  end
end

trapez(@(x) exp(x), 0, 1, 10000)
# Exercițiul 7
function s = S(n)
  s = n * (n + 1) * (2*n+1) / 6;
end

function n = limit(f, L)
  n = 0;
  while f(n) <= L
    n++;
  end
  n--;
end

ex7 = @(L) limit(@S, L)
arrayfun(ex7, 10.^(1:10))
