# Exercițiul 1

A = [1 2 -1 3; 7 6 0 1; 3 -2 -2 -1; 0 1 -4 5];
display(A)

display(A')
display("")

display(A * A')
display("")

display(A' * A)
display("")

display(rank(A))
display(det(A))
display(inverse(A))
display("")

B = A'
display(3 * A - 5 * B^3)
display("")

# Exercițiul 2
A = [5 2 1; 5 -6 2; -4 2 1]
b = [12 -1 3]'
display(A \ b)

function x = solve2b(n)
  A = 2.*eye(n) + diag(-1 * ones(1, n-1), 1) + diag(-1 * ones(1, n-1), -1)
  b = ones(1, n)'
  x = A \ b;
end
solve2b(10)

# Exercițiul 3
x = [1 2 3; 0 -2 5; 6 3 9];
display(sum(sum(x > 1)))

x = -10:0.1:10;
display(sum(x > 1))

x = 5 * randn(5)
display(sum(sum(x > 1)))

# Exercițiul 4
D = reshape([1:1:625;], [25, 25])';
D(isprime(D)) = 0
display(D)

# Exercițiul 5
r = rand(5, 5)
display(mean(r(r > 0.5)))

# Exercițiul 6

x = zeros(1, 100);
for i=1:size(x, 2)
  x(i) = 1/(2*i - 1) * (-1)^(i + 1);
end
display(sum(x)) # pi/4

# Exercițiul 7
display(prod(1:25))

# Exercițiul 8
display(sum((1:20).^2))

# Exercițiul 9
N = 100000;
I = 1:N;
display(sum(1./(I.^2 + I)))

# Exercițiul 10
X = 2.3;
Y = 0:0.2:2;

function y = f(x)
  y = x.^3/(1 + x.^2);
end
f(X)
arrayfun(@f, Y)

function y = f(x)
  y = 2.^x/(2 + 5.^x);
end
f(X)
arrayfun(@f, Y)

function y = f(x)
  y = x./(1 + sqrt(x));
end
f(X)
arrayfun(@f, Y)
