syms t a w s tau neu;

%generate laplace tranforms
f = exp(a*t)*sin(w*t);     %Enter your t domain expression
F = laplace(f);
disp(F);

%generate inv laplace tranforms
G = 1/(s^2 + 1);           %Enter your s domain expression
g = ilaplace(G);
disp(g);


%generate partial fractions 
a = [1 6 11 6];            %Denominator polynomial coeffecients          
b = [5 3];                 %Numerator polynomial coeffecients 

[r,p,k] = residue(b,a);
disp([r p k]);
