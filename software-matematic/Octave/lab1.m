# Exercițiul 1
x = (3 + 2^2) / (5^3 + 1) + 4^(2/3 - 1) * 8;
display(x)
y = 7*x-5;
display(y)
display(sin(pi/4) + cos(2*pi/3)^2)
display(exp(y) - log(e))

# Exercițiul 2
x = 3;
display(x^3/6)
display(exp(x^2 - 1))
display((x - 1)/sqrt(x^2 + 1))
display(x^3 * sin(x - 2^x))
display(2^(1/(3*x)))
display(atan(x)/(1 + x^2))

# Exercițiul 3
v = -1:1:1;
display(size(v))
v = -1:0.01:1;
display(size(v))
A = ones(2, 3)
B = [A; [2, 3, 4]]
C = repmat(B, 2, 3)
display(size(C))
display(C(5,:))
display(C(:, 2))
C = C(1:end-2, 1:end-2)

# Exercițiul 4
x = zeros(1, 100);
for i = 1:100
  x(i) = i * (i + 1);
end
display(x)

for i = 1:100
  x(i) = i*sqrt(i) + 1;
end
display(x) # Prefer să nu afișez


# Exercițiul 5
function [x] = M1(n)
  main_diag = diag(-n:n);
  above_diag = diag(ones(1, 2*n), 1);
  below_diag = diag(ones(1, 2*n), -1);

  x = main_diag + above_diag + below_diag;
end

M1(5)

function [x] = M2(n)
  main_diag = diag(1:n);
  above_diag = diag(-2 * ones(1, n-1), 1);
  below_diag = diag(-2 * ones(1, n-1), -1);

  x = main_diag + above_diag + below_diag;
end

M2(5)

function [x] = M3(n)
  main_diag = diag(1:n);
  below_diag = diag(-(2:n), -1);
  above_diag = diag(flip(2:n), 1);

  x = main_diag + above_diag + below_diag;
end

M3(5)
