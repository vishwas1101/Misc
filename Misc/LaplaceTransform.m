clc
clear

syms t a w s tau neu;

% %generate laplace tranforms
% x1 = t^2 - 2*t;     %Enter your t domain expression
% X1 = simplify(laplace(x1));
% disp(simplify(X1));
% 
% x2 = t;
% X2 = laplace(x2);
% disp(simplify(X2));
% 
% % convolved_x = conv(x1, x2);

Y = 2/(s*(s+1)*(s+2));
y = ilaplace(Y);
disp(simplify(y));

